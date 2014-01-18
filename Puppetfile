# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.3.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.1"
github "foreman",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.2.5"
github "go",         "1.0.0"
github "homebrew",   "1.5.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.3.0"
github "openssl",    "1.0.0"
github "phantomjs",  "2.0.2"
github "pkgconfig",  "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.7.2"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
 
github "chrome",   "1.1.0"
github "firefox", "0.0.4", :repo => "dieterdemeyer/puppet-firefox"

github "java",     "1.0.6"

github "iterm2", "1.0.3", :repo => "cdenneen/puppet-iterm2"
github "screen", "1.0.0"
github "macvim",  "1.0.0"
github "augeas", "1.2.2"
github "wget", "1.0.0"

github "textmate", "1.1.0"
github "sublime_text_2",  "1.0.0"
github "cord",  "1.0.0"
github "alfred", "1.1.2"
github "gitx", "1.1.0"
#github "droplr",  "1.0.0"
github "zsh", "1.0.0"
github "things",  "1.0.0"
github "spotify", "1.0.1"
github "sparrow", "1.0.0"
github "skype", "1.0.0"
github "osx", "1.5.0"
github "onepassword", "1.0.0"
github "colloquy",  "1.0.0"
github "caffeine",  "1.0.0"
github "vagrant", "2.0.2"
github "cyberduck", "1.0.3", :repo => "cdenneen/puppet-cyberduck"
github "dropbox", "1.1.2", :repo => "cdenneen/puppet-dropbox"
github "sizeup", "1.0.0"
github "sequel_pro", "1.0.0"
github "clipmenu", "1.0.0"
github "googledrive", "1.0.2"
github "sourcetree", "0.0.2"

github "property_list_key", "0.1.0", :repo => "glarizza/puppet-property_list_key"
github "dockutil", "0.1.0", :repo => "grahamgilbert/puppet-dockutil"
github "tunnelblick", "1.0.0"
github "evernote", "1.0.1", :repo => "cdenneen/puppet-evernote"
github "jumpcut", "1.0.0"
github "onyx", "1.0.1", :repo => "dieterdemeyer/puppet-onyx"
github "adium", "1.1.1", :repo => "dieterdemeyer/puppet-adium"
github "unarchiver", "1.1.0", :repo => "dieterdemeyer/puppet-unarchiver"
github "shortcat", "1.0.5"
github "lync", "1.2.0", :repo => "dieterdemeyer/puppet-lync"

