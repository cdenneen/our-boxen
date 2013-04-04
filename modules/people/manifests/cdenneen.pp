class people::cdenneen {
  include people::cdenneen::applications
  include people::cdenneen::nginx_custom
#  include projects::vpp
  
  class nginx_custom inherits nginx {
    File <| title == $nginx::config::configfile |> {
      content => template('projects/shared/nginx.conf.erb'),
      notify  => Service['dev.nginx'],
      require => File['fastcgi_params'],
    }

    file { "fastcgi_params":
      path    => "/opt/boxen/config/nginx/fastcgi_params",
      content => template('projects/shared/fastcgi_params.erb'),
      notify  => Service['dev.nginx'],
    }
  }

  boxen::osx_defaults { 'Shrink Dock':
      ensure  => present,
      domain  => 'com.apple.dock',
      key     => 'tilesize',
      type    => 'integer',
      value   => 24,
      user    => $::luser
  }

  include dockutil
  dockutil::item { '/Users/chris':
      item    => "/Users/chris",
      label   => "Home",
      action  => "add",
      position => "unset",
  }
  dockutil::item { '/Users/chris/Documents':
      item    => "/Users/chris/Documents",
      label   => "Documents",
      action  => "add",
      position => "unset",
  }
  dockutil::item { '/Users/chris/Downloads':
      item    => "/Users/chris/Downloads",
      label   => "Downloads",
      action  => "add",
      position => "3",
  }
  dockutil::item { '/Applications':
      item    => "/Applications",
      label   => "Applications",
      action  => "add",
      position => "4",
  }
  dockutil::item { '/Applications/Utilities':
      item    => "/Applications/Utilities",
      label   => "Utilities",
      action  => "add",
      position => "5",
  }
#  boxen::osx_defaults { 'Add Home to Dock':
#      ensure  => present,
#      domain  => 'com.apple.dock',
#      key     => 'persistent-others',
#      type    => 'array-add',
#      value   => "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Users/chris</string><key>_CFURLStringType</key><integer>0</integer></dict><key>file-label</key><string>My Home</string><key>file-type</key><integer>18</integer></dict><key>tile-type</key><string>directory-tile</string></dict>",
#      user    => $::luser
#  }
#  boxen::osx_defaults { 'Add Applications to Dock':
#      ensure  => present,
#      domain  => 'com.apple.dock',
#      key     => 'persistent-others',
#      type    => 'array-add',
#      value   => "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications</string><key>_CFURLStringType</key><integer>0</integer></dict><key>file-label</key><string>Applications</string><key>file-type</key><integer>18</integer></dict><key>tile-type</key><string>directory-tile</string></dict>",
#      user    => $::luser
#  }
#  boxen::osx_defaults { 'Add Utilities to Dock':
#      ensure  => present,
#      domain  => 'com.apple.dock',
#      key     => 'persistent-others',
#      type    => 'array-add',
#      value   => "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Utilities</string><key>_CFURLStringType</key><integer>0</integer></dict><key>file-label</key><string>Utilities</string><key>file-type</key><integer>18</integer></dict><key>tile-type</key><string>directory-tile</string></dict>",
#      user    => $::luser
#  } ~>
#
#  exec { 'Restart the Dock':
#      command => '/usr/bin/killall -HUP Dock',
#      refreshonly => true,
#  }
#  git::repo{'vpp':
#      path    =>  "${home}/Sandbox/dne",
#      source  => 'git://git@apdnp.beanstalkapp.com:/vpp.git',
#      branch  => "develop",
#  }
}
