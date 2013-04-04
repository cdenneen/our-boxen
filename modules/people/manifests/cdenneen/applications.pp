class people::cdenneen::applications {
  include spotify
  include gitx::l
  include sparrow
  include macvim
  include chrome
  include skype
  include iterm2::dev
  include sublime_text_2
  include zsh
  include vagrant
  include cyberduck


#	include appcleaner
#	include onepassword
#	include dropbox
	#include chocolat
#	include crashplan
#	include virtualbox
#	include colloquy
#	include caffeine
#	include alfred2
#	include xquartz
#	include vmware_fusion
#	include textmate::textmate2::release

#	package{ 'zsh': }
#	package{ 'htop-osx': }
	package{ 'tree': }
#	include vagrant
	
#	vagrant::plugin { 'vagrant-vmware-fusion':
#	  license => "/Users/${::luser}/Dropbox/Software/Vagrant/fusion-license.lic",
#	}

	package { 'Github for Mac':
    	source   => 'https://github-central.s3.amazonaws.com/mac%2FGitHub%20for%20Mac%20111.zip',
    	provider => compressed_app
  	}

  	package { 'CoRD':
    	source   => 'http://iweb.dl.sourceforge.net/project/cord/cord/0.5.7/CoRD_0.5.7.zip',
    	provider => compressed_app,
  	}

  	package { 'Transmission':
    	source   => 'http://download.transmissionbt.com/files/Transmission-2.73.dmg',
    	provider => appdmg
  	}
  
  	package { 'Bartender':
  		source  => 'http://www.macbartender.com/Demo/Bartender.zip',
  		provider    => compressed_app,
  	}
  	
  	package { 'Transmit':
  		source      => 'http://www.panic.com/transmit/d/Transmit%204.3.2.zip',
  		provider    => compressed_app,
    }
    
    package { 'Kaleidoscope':
    	 source      => 'http://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-2.0.1-114.zip',
    	 provider    => compressed_app,
    }  
      
    package { 'iStat Menus 4':
    	 source      => 'http://s3.amazonaws.com/bjango/files/istatmenus4/istatmenus4.04.zip',
    	 provider    => compressed_app,
    }
  
#    package { 'Remote Desktop':
#    	source	 => "/Users/${::luser}/Dropbox/Software/Remote Desktop/RemoteDesktop.dmg",
#    	provider => pkgdmg,
#    }
    
    ##install Meraki Systems Manager on the home machine
#    if ($::hostname == "Loki"){
#        package { 'Meraki Systems Manager':
#            source   =>  "/Users/${::luser}/Dropbox/Software/Home Meraki/MerakiSM-Agent-systems-manager.dmg",
#            provider => pkgdmg,
#        }
#    }
    
    package { 'Kiwi':
        source   => "http://s3.amazonaws.com/Kiwi/Kiwi_3.0.1_1125.zip",
        provider => compressed_app,
    }
    
    package { 'unetbooin':
    	source	 => "http://unetbootin.sourceforge.net/unetbootin-mac-latest.zip",
    	provider => compressed_app,
    }
    
    #package { 'puppet-lint': 
    #    provider => 'gem',
    #}

  package { 'iStat Menus':
    source   => 'http://s3.amazonaws.com/bjango/files/istatmenus3/istatmenus3.27.zip',
    provider => compressed_app
  }

  package { 'Gephi':
    source   => 'https://launchpadlibrarian.net/98903476/gephi-0.8.1-beta.dmg',
    provider => appdmg,
  }

  package { 'Pacifist':
    source   => 'http://www.charlessoft.com/pacifist_download/Pacifist_3.0.10.dmg',
    provider => appdmg,
  }

  package { 'A Better Finder Renamer':
    source   => 'http://d3k6s0oeufjjjn.cloudfront.net/download0_126e6b5/ABFRX8.dmg',
    provider => appdmg,
  }

  package { 'Tunnelblick':
    source   => 'http://tunnelblick.googlecode.com/files/Tunnelblick_3.3beta21a.dmg',
    provider => appdmg,
  }

  package { 'Crashplan':
    source   => 'http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_3.2.1_Mac.dmg',
    provider => pkgdmg,
  }

  package { 'Yorufukurou':
    source   => 'http://aki-null.net/yf/YoruFukurou_SL.zip',
    provider => compressed_app,
  }

  package { 'Timer':
    source   => 'http://www.apimac.com/download/timer.dmg',
    provider => appdmg,
  }

}
