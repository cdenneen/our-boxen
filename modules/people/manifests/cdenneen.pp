class people::cdenneen {

  include people::cdenneen::params
  include people::cdenneen::config
  include people::cdenneen::applications
  include people::cdenneen::repositories
  include people::cdenneen::nginx_custom
  ruby::version { '2.2.5': }
  ruby::version { '2.2.6': }
  ruby::version { '2.3.3': }
  ruby::version { '2.4.0': }
}
