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
  mod "puppet-#{name}", :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.10.4"

# Support for default hiera data in modules

github "module_data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "brewcask",    "0.0.6"
github "dnsmasq",     "2.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.2.1"
github "git",         "2.7.9"
github "go",          "2.1.0"
github "homebrew",    "1.12.0"
github "hub",         "1.4.1"
github "inifile",     "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.5"
github "nodejs",      "4.0.1"
github "openssl",     "1.0.0"
github "phantomjs",   "2.4.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.4.1"
github "ruby",        "8.5.2"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "chrome",   "1.1.2"
#github "firefox", "0.0.4", :repo => "dieterdemeyer/puppet-firefox"
github "firefox", "1.2.1"

github "java",     "1.2.0"

github "iterm2", "1.0.9"
github "screen", "1.0.0"
github "macvim",  "1.0.0"
github "augeas", "1.3.1"
github "wget", "1.0.0"

github "textmate", "1.1.0"
github "sublime_text_2",  "1.1.2"
github "cord",  "1.0.0"
github "alfred", "1.1.7"
github "gitx", "1.1.0"
#github "droplr",  "1.0.0"
github "zsh", "1.0.0"
github "things",  "1.0.1"
github "spotify", "1.0.1"
github "sparrow", "1.0.0"
github "skype", "1.0.8"
github "osx", "2.2.2"
github "onepassword", "1.0.0"
github "colloquy",  "1.0.0"
github "caffeine",  "1.0.0"
github "vagrant", "3.0.3"
#github "cyberduck", "1.0.3", :repo => "cdenneen/puppet-cyberduck"
github "dropbox", "1.2.0"
github "sizeup", "1.0.0"
github "sequel_pro", "1.0.1"
github "clipmenu", "1.0.0"
github "googledrive", "1.0.2"
github "sourcetree", "1.0.0"

github "property_list_key", "0.2.0", :repo => "glarizza/puppet-property_list_key"
github "dockutil", "0.1.2", :repo => "grahamgilbert/puppet-dockutil"
github "tunnelblick", "1.0.4"
github "evernote", "2.0.5"
github "jumpcut", "1.0.0"
github "onyx", "1.1.1", :repo => "dieterdemeyer/puppet-onyx"
github "adium", "1.3.0", :repo => "dieterdemeyer/puppet-adium"
github "unarchiver", "1.3.0", :repo => "dieterdemeyer/puppet-unarchiver"
github "shortcat", "1.0.6"
github "lync", "1.3.0", :repo => "dieterdemeyer/puppet-lync"
github "virtualbox", "1.0.10"
#github "parallels", "1.1.1", :repo => "cdenneen/puppet-parallels"
# github "elasticsearch", "2.7.2"
# github "mysql",         "2.0.1"
# github "postgresql",  "3.0.3"
# github "redis",       "3.1.0"
# github "sysctl",      "1.0.1"
