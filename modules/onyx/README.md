# Onyx Puppet Module for Boxen [![Build Status](https://travis-ci.org/boxen/puppet-onyx.png)](https://travis-ci.org/boxen/puppet-onyx)

Install [Onyx](http://www.titanium.free.fr/downloadonyx.php), a multifunction utility for Mac OS X which allows you to verify the startup disk and the structure of its System files, to run misc. tasks of system maintenance, to configure some hidden parameters of the Finder, Dock, QuickTime, Safari, Mail, iTunes, login window, Spotlight, and many of Apple’s applications, to delete caches, to remove a certain number of files and folders that may become cumbersome, and more.

## Usage

```puppet
include onyx
```

## Required Puppet Modules

* `boxen`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
