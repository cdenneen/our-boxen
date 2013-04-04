class people::cdenneen::config (
	$my_homedir   = $::people::cdenneen::params::my_homedir,
  	$my_sourcedir = $::people::cdenneen::params::my_sourcedir,
  	$my_username  = $::people::cdenneen::params::my_username
	){	
		# Put the default ruby back to 1.8.7
		
		#class { 'ruby::global': version => '1.9.3' }
		
		osx_chsh { $::luser:
			shell   => '/opt/boxen/homebrew/bin/zsh',
			require => Package['zsh'],
		}
		
		file_line { 'add zsh to /etc/shells':
			path    => '/etc/shells',
			line    => "${boxen::config::homebrewdir}/bin/zsh",
			require => Package['zsh'],
		}
		
	#	if !defined(File["${my_sourcedir}/Mine"]){
	#		file {"${my_sourcedir}/Mine":
	#			ensure => directory,
	#		}
	#	}
		
	#	repository { 'oh-my-zsh':
	#		source => 'cdenneen/oh-my-zsh',
	#		path   => "/Users/${::luser}/.oh-my-zsh"
	#	 }
		
	#	file { "/Users/${::luser}/.zshrc":
	#		ensure  => link,
	#		target  => "/Users/${::luser}/.oh-my-zsh/grahams-zshrc",
	#		require => Repository['oh-my-zsh']
	#	}
		

		git::config::global { 'user.email':
			value  => 'cdenneen@gmail.com'
		}
		
		Boxen::Osx_defaults {
		  user => $::luser,
		}
		
		 boxen::osx_defaults { 'Finder Status Bar':
			 ensure	=> 	present,
			 domain	=>	'com.apple.finder',
			 key	=>	'ShowStatusBar',
			 value	=>	'YES',
		}
		
		boxen::osx_defaults { 'Disable the "Are you sure you want to open this application?" dialog':
			key    => 'LSQuarantine',
		  	domain => 'com.apple.LaunchServices',
		  	value  => 'true',
		}
		
		boxen::osx_defaults { 'Remove Alfred Hat from the Menu Bar':
			domain	=> 'com.alfredapp.Alfred',
			key		=> 'appearance.hideStatusBarIcon',
			#type	=> 'BOOL',
			value	=> 'YES',
		}
		
	#	boxen::osx_defaults { 'Make Go2Shell Use iTerm':
	#		domain	=> 'com.alice.mac.go2shell',
	#		key		=> 'usingTerminal',
	#		#type	=> 'BOOL',
	#		value	=> '2',
	#	}
		
		#boxen::osx_defaults { 'iTerm stays open when all windows are shut':
		#	domain	=> 'com.googlecode.iterm2',
		#	key		=> 'QuitWhenAllWindowsClosed',
			#type	=> 'BOOL',
		#	value	=> 'NO',
		#}
		
		#boxen::osx_defaults { 'Stop iTerm nagging about quitting':
		#	domain	=> 'com.googlecode.iterm2',
		#	key		=> 'PromptOnQuit',
			#type	=> 'BOOL',
		#	value	=> 'NO',
		#}
		
		##Not sure I want to configure this, needs a bit of thought.
		#boxen::osx_defaults { 'Bartender Menu Bar Order':
		#	domain	=> 'com.surteesstudios.Bartender',
		#	key		=> 'appBartenderOrder',
		#	value	=> ['Notification Center', ],
		#}
		
}
