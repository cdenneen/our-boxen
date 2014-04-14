# Ruby Puppet Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-ruby.png?branch=master)](https://travis-ci.org/boxen/puppet-ruby)

Requires the following boxen modules:

* `boxen >= 3.2.0`
* `repository >= 2.1`
* `xquartz` (OS X only)
* `autoconf` (some ruby versions)
* `openssl` (ruby versions >= 2.0.0)

## Usage

```puppet
# Set the global default ruby (auto-installs it if it can)
class { 'ruby::global':
  version => '1.9.3'
}

# ensure a certain ruby version is used in a dir
ruby::local { '/path/to/some/project':
  version => '1.9.3-p194'
}

# ensure a gem is installed for a certain ruby version
# note, you can't have duplicate resource names so you have to name like so
$version = "2.0.0"
ruby::gem { "bundler for ${version}":
  gem     => 'bundler',
  ruby    => $version,
  version => '~> 1.2.0'
}

# install a ruby version
ruby::version { '1.9.3-p194': }

# Installing rbenv plugin
ruby::plugin { 'rbenv-vars':
  ensure => 'v1.2.0',
  source  => 'sstephenson/rbenv-vars'
}

# Run an installed gem
# rbenv-installed gems cannot be run in the boxen installation environment which uses the system
# ruby. The environment must be cleared (env -i) so an installed ruby (and gems) can be used in a new shell.
exec { "env -i zsh -c 'source /opt/boxen/env.sh && RBENV_VERSION=${version} bundle install'":
  provider => 'shell',
  cwd => "~/src/project",
  require => [ Ruby::Gem["bundler for ${version}"], Package['zsh'] ]
}
```

## Hiera configuration

The following variables may be automatically overridden with Hiera:

``` yaml
---
"ruby::default_gems":
  - "bundler ~>1.3"
  - "pry"

"ruby::rbenv_plugins":
  "rbenv-gem-rehash":
    "ensure": "v1.0.0"
    "source": "sstephenson/rbenv-gem-rehash"

"ruby::rbenv_version": "v0.4.0"

"ruby::rbenv_root": "/home/deploy/rbenv"

"ruby::user": "deploy"

# Environment variables for building specific versions
# You'll want to enable hiera's "deeper" merge strategy
# See http://docs.puppetlabs.com/hiera/1/configuring.html#mergebehavior
"ruby::version::env":
  "1.9.3-gentoo":
    "CC": "llvm"
    "CFLAGS": "-O9 -funroll-loops"
  "2.0.0-p0":
    "CC": "gcc"

# Version aliases, commonly used to bless a specific version
# Use the "deeper" merge strategy, as with ruby::version::env
"ruby::version::alias":
  "1.9.3": "1.9.3-p484"
  "2.0.0": "2.0.0-github"
  "2.0.0-github": "2.0.0-github6"
```

We highly recommend that you include
[ripienaar/puppet-module-data](https://github.com/ripienaar/puppet-module-data)
in your boxen project, as this module now ships with many pre-defined versions
and aliases in the `data/` directory. With this module included, those
definitions will be automatically loaded, but can be overridden easily in your
own hierarchy.

You can also use JSON if your Hiera is configured for that.
