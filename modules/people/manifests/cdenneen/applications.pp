class people::cdenneen::applications {
  package { '1password': provider => 'brewcask' }
  package { 'spotify': provider => 'brewcask' }
  package { 'gitx': provider => 'brewcask' }
  package { 'macvim': provider => 'brewcask' }
  package { 'google-chrome': provider => 'brewcask' }
  package { 'google-drive': provider => 'brewcask' }
  package { 'google-hangouts': provider => 'brewcask' }
  package { 'google-photos-backup': provider => 'brewcask' }
  package { 'google-plus-auto-backup': provider => 'brewcask' }
  package { 'heroku-toolbelt': provider => 'brewcask' }
  package { 'hexchat': provider => 'brewcask' }
  package { 'hipchat': provider => 'brewcask' }
  package { 'adium': provider => 'brewcask' }
  package { 'adobe-reader': provider => 'brewcask' }
  package { 'adobe-air': provider => 'brewcask' }
  package { 'amazon-cloud-drive': provider => 'brewcask' }
  package { 'caffeine': provider => 'brewcask' }
  package { 'clipmenu': provider => 'brewcask' }
  package { 'colloquy': provider => 'brewcask' }
  package { 'dropbox': provider => 'brewcask' }
  package { 'dropbox-encore': provider => 'brewcask' }
  package { 'eclipse-ide': provider => 'brewcask' }
  package { 'evernote': provider => 'brewcask' }
  package { 'filezilla': provider => 'brewcask' }
  package { 'firefox': provider => 'brewcask' }
  package { 'github': provider => 'brewcask' }
  package { 'iterm2': provider => 'brewcask' }
  package { 'sublime-text': provider => 'brewcask' }
  package { 'vagrant': provider => 'brewcask' }
  package { 'vagrant-manager': provider => 'brewcask' }
  package { 'virtualbox': provider => 'brewcask' }
  package { 'packer': provider => 'brewcask' }
  package { 'vypervpn': provider => 'brewcask' }
  package { 'sizeup': provider => 'brewcask' }
  package { 'sequel-pro': provider => 'brewcask' }
  package { 'sourcetree': provider => 'brewcask' }
  package { 'onyx': provider => 'brewcask' }
  package { 'microsoft-lync': provider => 'brewcask' }
  package { 'microsoft-lync-plugin': provider => 'brewcask' }
  package { 'microsoft-office': provider => 'brewcask' }
  package { 'visual-studio-code': provider => 'brewcask' }
  package { 'rubymine': provider => 'brewcask' }
  package { 'skype': provider => 'brewcask' }
  package { 'skype': provider => 'brewcask' }

###  include virtualbox
  #include parallels
###  include spotify
###  include gitx::l
#######  include sparrow
###  include macvim
###  include chrome
###  include skype
###  include iterm2::dev
###  include iterm2::colors::solarized_light
###  include iterm2::colors::solarized_dark
###  include sublime_text_2
#######  include zsh
###  include vagrant
  #  include cyberduck
#######  include tunnelblick
###  include caffeine
###  include sizeup
###  include sequel_pro
###  include dropbox
###  include onepassword
###  include clipmenu
###  include googledrive
###  include sourcetree
###  include evernote
#######  include jumpcut
###  include adium
###  include onyx
#######  include unarchiver
#######  include shortcat
###  include lync

# To be added
#  include 1password
#  include alfred2
#  include bettertouchtool
#  include caffeine
#  include colloquy
#  include cord
#  include crashplan
#  include dash / dash expander
#  include dropbox
#  include evernote
###  include firefox
#  include freememory
#  include googledrive
#  include googleappenginelauncher
#  include intercall
#  include jewelrybox # not used
#  include join.me
#  include littleipsum
#  include hamachi
#  include magican
#  include communicator
#  include office2011
#  include mikogo
#  include netnewswire
#  include networkconnect
#  include parallels
#  include pocket
#  include remotedesktopconnection
#  include rescuetime
#  include sequelpro
#  include skitch
#  include skydrive
#  include textexpander
#  include twitter
#  include wunderlist
#  include yahoomessenger
#  include zterm
#  include 7zip 7zX?
#  include scansnap + abbyfinereader
#  include adium
#  include adobe cs suite
#  include aimersoft dvd creator # not sure how much used
#  include appfresh # still use?
#  include angryipscanner
#  include acquaemacs
#  include bluecat
#  include boxee
#  include calaboration
#  include chickenofthevnc
#  include clamXav
#  include coconutBattery
#  include DiskInvetoryX
#  include DynDNSUpdater
#  include Flip4Mac
#  include Fluid
#  include Handbrake
#  include HardwareGrowler
#  include Home Zone
#  include JellyFiSSH
#  include Jing
#  include KeePassX
#  include Lounge
#  include MacDroidNotifier
#  include Macfusion
#  include TuxteraNTFS
#  include Maclit
#  include MactheRipper
#  include MediaCloudMac
#  include MoMA
#  include MonoDevelop
#  include MySQL Tools
#  Nemo
#  NxClient
#  OmniDiskSweeper
#  OnyX
#  Opera
#  PogoPlug
#  pollux
#  PsyncX
#  Quicksilver
#  RDP Launcher
#  ReadyNAS Remote
#  ScreenRecyler
#  ScreenSharingMenulet
#  sidenote
#  SiriusMac
#  Spark
#  Spaz
#  SuperDuper!
#  svnX
#  TeamViewer
#  TechTool Deluxe
#  Tinkertool
#  Transmission
#  Transmit
#  TrueCrypt
#  TSClientX
# TweetDeck
#  Tweetie
#  UnRarX
#  Versions
#  VLC
#  VMWare View Open Client
#  Vocito
#  Voice Mac
#  VPN Tracker 5
#  Waveboard
#  Wireshark
#  Zenmap
#  BUFFALO NasNavigator
#  calibre
#  captur
#  carbon copy cloner
#  chronosync
#  cinema tools
#  clipboard history
#  cloud.app
#  color.app
#  compressor.app
#  couchpotato
#  dedrm
#  divx
#  epson
#  eye-fi
#  Ez7z
#  fairmount
#  fetch
#  final cut pro
#  flip player
#  fluid
#  gizmo5
#  hogwasher
#  iphoto buddy
#  ivi
#  iwork
#  kod.app
#  logitech harmony
#  macpar deluxe
#  macspeech dictate international
#  macvim
#  makemkv
#  mediainfo
#  Mimo
#  Mint Quickview
#  MPlayer
#  Nook for Mac
#  OpenDNS
#  P2CMS
#  Packages.app
#  PeerGuardian
#  Perian
#  Photo Mechanic
#  Picasa Web Albums Uploader
#  Plex
#  Quiet Read
#  Remote Core
#  Rinse
#  Ripit
#  Sabnzbd
#  Sickbeard
#  SmartLabelPrinter
#  Snagit
#  SplashtopRemote
#  Subler
#  textwrangler
#  thunderbird
#  trillian
#  unison
#  utorrent
#  vmware fusion
#  xbmc
#  xmarks
#  zumocast
# Hazel




#include appcleaner
#include onepassword
#include dropbox
#include chocolat
#include crashplan
#include virtualbox
#include colloquy
#include caffeine
#include alfred2
#include xquartz
#include vmware_fusion
#include textmate::textmate2::release

#package{ 'zsh': }
#package{ 'htop-osx': }
#package{ 'tree': }
#include vagrant

#vagrant::plugin { 'vagrant-vmware-fusion':
#  license => "/Users/${::luser}/Dropbox/Software/Vagrant/fusion-license.lic",
#}

#package { 'Github for Mac':
#   source   => 'https://github-central.s3.amazonaws.com/mac%2FGitHub%20for%20Mac%20111.zip',
#    provider => compressed_app
#  }

#  package { 'CoRD':
#    source   => 'http://iweb.dl.sourceforge.net/project/cord/cord/0.5.7/CoRD_0.5.7.zip',
#    provider => compressed_app,
#  }

#  package { 'Transmission':
#    source   => 'http://download.transmissionbt.com/files/Transmission-2.73.dmg',
#    provider => appdmg
#  }

#  package { 'Bartender':
#  source  => 'http://www.macbartender.com/Demo/Bartender.zip',
#  provider    => compressed_app,
#  }

#  package { 'Transmit':
#    source      => 'http://www.panic.com/transmit/d/Transmit%204.3.2.zip',
#    provider    => compressed_app,
#  }

#    package { 'Kaleidoscope':
#     source      => 'http://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-2.0.1-114.zip',
#     provider    => compressed_app,
#    }

#    package { 'iStat Menus 4':
#     source      => 'http://s3.amazonaws.com/bjango/files/istatmenus4/istatmenus4.04.zip',
#     provider    => compressed_app,
#    }

#    package { 'Remote Desktop':
#    source => "/Users/${::luser}/Dropbox/Software/Remote Desktop/RemoteDesktop.dmg",
#    provider => pkgdmg,
#    }

    ##install Meraki Systems Manager on the home machine
#    if ($::hostname == "Loki"){
#        package { 'Meraki Systems Manager':
#            source   =>  "/Users/${::luser}/Dropbox/Software/Home Meraki/MerakiSM-Agent-systems-manager.dmg",
#            provider => pkgdmg,
#        }
#    }

#    package { 'Kiwi':
#        source   => "http://s3.amazonaws.com/Kiwi/Kiwi_3.0.1_1125.zip",
#        provider => compressed_app,
#    }

#    package { 'unetbooin':
#    source => "http://unetbootin.sourceforge.net/unetbootin-mac-latest.zip",
#    provider => compressed_app,
#    }

  package { 'puppet-lint':
    provider => 'gem',
  }

#  package { 'iStat Menus':
#    source   => 'http://s3.amazonaws.com/bjango/files/istatmenus3/istatmenus3.27.zip',
#    provider => compressed_app
#  }

#  package { 'Gephi':
#    source   => 'https://launchpadlibrarian.net/98903476/gephi-0.8.1-beta.dmg',
#    provider => appdmg,
#  }

#  package { 'Pacifist':
#    source   => 'http://www.charlessoft.com/pacifist_download/Pacifist_3.0.10.dmg',
#    provider => appdmg,
#  }

#  package { 'A Better Finder Renamer':
#    source   => 'http://d3k6s0oeufjjjn.cloudfront.net/download0_126e6b5/ABFRX8.dmg',
#    provider => appdmg,
#  }

#  package { 'Tunnelblick':
#    source   => 'http://tunnelblick.googlecode.com/files/Tunnelblick_3.3beta21a.dmg',
#    provider => appdmg,
#  }

#  package { 'Crashplan':
#    source   => 'http://download.crashplan.com/installs/mac/install/CrashPlan/CrashPlan_3.2.1_Mac.dmg',
#    provider => pkgdmg,
#  }

#  package { 'Yorufukurou':
#    source   => 'http://aki-null.net/yf/YoruFukurou_SL.zip',
#    provider => compressed_app,
#  }

#  package { 'Timer':
#    source   => 'http://www.apimac.com/download/timer.dmg',
#    provider => appdmg,
#  }

  package { 'solr36':
    ensure   => present,
    provider => 'homebrew',
  }


}
