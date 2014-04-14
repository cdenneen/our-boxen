# Various abusive monkeypatches for Homebrew.

require "formula"
require "formula_installer"
require "net/http"
require "uri"

# This monkeypatch of FormulaInstaller sidesteps Homebrew's normal
# bottle support and uses our, uh, homebrewed S3 binaries. This
# support is patched in instead of handled in Puppet so that manual
# installs and indirect dependencies are also supported.

class FormulaInstaller
  def boxen_snapshot_url
    os     = MACOS_VERSION
    file   = "#{f.name}-#{f.version}.tar.bz2"
    host   = ENV['BOXEN_S3_HOST']   || 's3.amazonaws.com'
    bucket = ENV['BOXEN_S3_BUCKET'] || 'boxen-downloads'

    "http://#{host}/#{bucket}/homebrew/#{os}/#{file}"
  end

  def have_boxen_bottle?
    url = URI.parse boxen_snapshot_url

    Net::HTTP.start url.host do |http|
      http.open_timeout = 1
      http.read_timeout = 1

      return Net::HTTPOK === http.head(url.path)
    end

    false
  end

  if defined? install_bottle?
    alias orig_install_bottle install_bottle?
    def install_bottle? *args
      have_boxen_bottle? || orig_install_bottle(*args)
    end
  end

  alias orig_pour_bottle? pour_bottle?
  def pour_bottle? *args
    have_boxen_bottle? || orig_pour_bottle?(*args)
  end

  alias orig_pour pour
  def pour *args
    return orig_pour(*args) unless have_boxen_bottle?

    bucket = ENV['BOXEN_S3_BUCKET'] || 'boxen-downloads'

    ohai "Installing #{f.name} from #{bucket} S3 bucket..."
    Dir.chdir HOMEBREW_CELLAR do
      system "curl -s #{boxen_snapshot_url} | tar -xjf -"
    end
  end
end
