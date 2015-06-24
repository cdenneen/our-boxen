class people::cdenneen::config (
  $my_homedir   = $::people::cdenneen::params::my_homedir,
  $my_sourcedir = $::people::cdenneen::params::my_sourcedir,
  $my_username  = $::people::cdenneen::params::my_username,
){

  ###################
  # Config Settings #
  ###################

  property_list_key { 'Disable Autocorrect':
    ensure     => present,
    path       => "/Users/${::luser}/Library/Preferences/.GlobalPreferences.plist",
    key        => 'NSAutomaticSpellingCorrectionEnabled',
    value      => false,
    value_type => 'boolean',
  }

  file { '.GlobalPreferences Plist':
    ensure  => file,
    require => Property_list_key['Disable Autocorrect'],
    path    => "/Users/${::luser}/Library/Preferences/.GlobalPreferences.plist",
    mode    => '0600',
  }

# Already declared in zsh module
#  osx_chsh { $::luser:
#    shell   => '/opt/boxen/homebrew/bin/zsh',
#    require => Package['zsh'],
#  }

# Already declared in zsh module
#  file_line { 'add zsh to /etc/shells':
#    path    => '/etc/shells',
#    line    => "${boxen::config::homebrewdir}/bin/zsh",
#    require => Package['zsh'],
#  }

#  if !defined(File["${my_sourcedir}/Mine"]){
#    file {"${my_sourcedir}/Mine":
#      ensure => directory,
#    }
#  }

#  repository { 'oh-my-zsh':
#    source => 'cdenneen/oh-my-zsh',
#    path   => "/Users/${::luser}/.oh-my-zsh"
#  }

#  file { "/Users/${::luser}/.zshrc":
#    ensure  => link,
#    target  => "/Users/${::luser}/.oh-my-zsh/grahams-zshrc",
#    require => Repository['oh-my-zsh']
#  }



  Boxen::Osx_defaults {
    user => $::luser,
  }

  boxen::osx_defaults { 'Finder Status Bar':
    ensure => present,
    domain =>'com.apple.finder',
    key    =>'ShowStatusBar',
    value  =>'YES',
  }

  boxen::osx_defaults { 'Disable the "Are you sure you want to open this application?" dialog':
    key    => 'LSQuarantine',
    domain => 'com.apple.LaunchServices',
    value  => 'true',
  }

  boxen::osx_defaults { 'Remove Alfred Hat from the Menu Bar':
    domain => 'com.alfredapp.Alfred',
    key    => 'appearance.hideStatusBarIcon',
    #type   => 'BOOL',
    value  => 'YES',
  }

  boxen::osx_defaults { 'Shrink Dock':
    ensure  => present,
    domain  => 'com.apple.dock',
    key     => 'tilesize',
    type    => 'integer',
    value   => 24,
    user    => $::luser
  }

  boxen::osx_defaults { 'Dock Left':
    ensure  => present,
    domain  => 'com.apple.dock',
    key     => 'orientation',
    type    => 'string',
    value   => 'left',
    user    => $::luser
  }

  property_list_key { 'Disable Gatekeeper':
    ensure => present,
    path   => '/var/db/SystemPolicy-prefs.plist',
    key    => 'enabled',
    value  => 'no',
  }

#  boxen::osx_defaults { 'Make Go2Shell Use iTerm':
#    domain=> 'com.alice.mac.go2shell',
#    key=> 'usingTerminal',
#    #type=> 'BOOL',
#    value=> '2',
#  }

#  boxen::osx_defaults { 'iTerm stays open when all windows are shut':
#    domain => 'com.googlecode.iterm2',
#    key    => 'QuitWhenAllWindowsClosed',
#    type   => 'BOOL',
#    value  => 'NO',
#  }

#  boxen::osx_defaults { 'Stop iTerm nagging about quitting':
#    domain => 'com.googlecode.iterm2',
#    key    => 'PromptOnQuit',
#    type   => 'BOOL',
#    value  => 'NO',
#  }

##Not sure I want to configure this, needs a bit of thought.
#  boxen::osx_defaults { 'Bartender Menu Bar Order':
#    domain => 'com.surteesstudios.Bartender',
#    key    => 'appBartenderOrder',
#    value  => ['Notification Center', ],
#  }

  include dockutil
  dockutil::item { "/Users/${::luser}":
      item     => "/Users/${::luser}",
      label    => "Home",
      action   => "add",
      position => "unset",
  }
  dockutil::item { "/Users/${::luser}/Documents":
      item     => "/Users/${::luser}/Documents",
      label    => "Documents",
      action   => "add",
      position => "unset",
  }
  dockutil::item { "/Users/${::luser}/Downloads":
      item     => "/Users/${::luser}/Downloads",
      label    => "Downloads",
      action   => "add",
      position => "3",
  }
  dockutil::item { '/Applications':
      item     => "/Applications",
      label    => "Applications",
      action   => "add",
      position => "4",
  }
  dockutil::item { '/Applications/Utilities':
      item     => "/Applications/Utilities",
      label    => "Utilities",
      action   => "add",
      position => "5",
  }

}
