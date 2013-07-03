class people::cdenneen::nginx_custom inherits nginx {
	
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