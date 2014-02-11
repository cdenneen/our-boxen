class people::cdenneen {

  include people::cdenneen::params
  include people::cdenneen::config
  include people::cdenneen::applications
  include people::cdenneen::repositories
  include people::cdenneen::nginx_custom
#  include projects::vpp
  host {'linuxmgr.ap.org':
    ensure => present,
    ip     => '10.1.67.62',
  }
}
