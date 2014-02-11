class people::cdenneen::repositories (
  $my_sourcedir = $people::cdenneen::params::my_sourcedir,
  $my_homedir   = $people::cdenneen::params::my_homedir,
  $my_username  = $people::cdenneen::params::my_username,
) {

  ###############################
  # Git config and repositories #
  ###############################

  git::config::global{ 'user.name':
    value => 'Chris Denneen',
  }

  git::config::global{ 'user.email':
    value => 'cdenneen@gmail.com'
  }

  file { "${my_sourcedir}/dnp":
    ensure => directory,
  } ->

  repository { "${my_sourcedir}/dnp/vpp":
    source => 'git@apdnp.beanstalkapp.com:/vpp.git'
  } ->

  repository { "${my_sourcedir}/dnp/apress":
    source => 'apress@svn-777.prod.hosting.acquia.com:apress.git'
  }
  repository { "${my_sourcedir}/deploy":
    source => 'git@gitolite:deploy.git'
  }
  repository { "${my_sourcedir}/gitolite-admin":
    source => 'git@gitolite:gitolite-admin'
  }
  repository { "${my_sourcedir}/interact":
    source => 'git@ctcinteract-svn01.ap.org:devops.git'
  }
}
