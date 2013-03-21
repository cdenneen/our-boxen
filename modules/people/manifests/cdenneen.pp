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
#  git::repo{'vpp':
#      path    =>  "${home}/Sandbox/dne",
#      source  => 'git://git@apdnp.beanstalkapp.com:/vpp.git',
#      branch  => "develop",
#  }
}
