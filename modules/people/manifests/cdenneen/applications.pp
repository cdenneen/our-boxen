class people::cdenneen::applications {
  include brewcask
  $cask_install = [
    '1password', 'spotify', 'google-chrome', 'google-drive', 'google-hangouts',
    'google-photos-backup', 'amazon-cloud-drive', 'caffeine', 'colloquy', 'dropbox', 'dropbox-encore',
    'evernote', 'filezilla', 'firefox', 'github', 'iterm2',
    'vagrant', 'vagrant-manager', 'virtualbox', 'packer', 'vyprvpn', 'sizeup',
    'skype', 'skypewebplugin',
    'slack',
    'visual-studio-code', 'atom', 'sublime-text', 'rubymine',
    'microsoft-office', 'microsoft-lync', 'skype-for-business'
  ]
  $cask_remove = [
    'gitx', 'macvim', 'google-plus-auto-backup', 'hexchat', 'hipchat', 'adium', 'adobe-reader', 'adobe-air', 'clipmenu',
    'eclipse-ide', 'sequel-pro', 'sourcetree', 'onyx', 'microsoft-lync-plugin', 'heroku-toolkit'
  ]
  $brew_install = [
    'heroku', 'zsh'
  ]
  $brew_remove = [
    'tree', 'htop-osx'
  ]
  package { $cask_install:
    ensure          => latest,
    provider        => 'brewcask',
    install_options => ['--appdir=/Applications', '--force'],
  }
  package { $cask_remove:
    ensure   => absent,
    provider => 'brewcask',
  }
  package { $brew_install:
    ensure   => latest,
    provider => 'homebrew',
  }
  package { $brew_remove:
    ensure   => absent,
    provider => 'homebrew',
  }
#include parallels
###  include macvim
###  include iterm2::dev
###  include iterm2::colors::solarized_light
###  include iterm2::colors::solarized_dark
###  include sublime_text_2
  #  include cyberduck
#######  include tunnelblick
###  include clipmenu
#######  include jumpcut
#######  include unarchiver
#######  include shortcat

# To be added
#  include 1password
#  include alfred2
#  include bettertouchtool
#  include caffeine
#  include colloquy
#  include cord
#  include crashplan
#  include dash / dash expander
#  include freememory
#  include intercall
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
#include chocolat
#include crashplan
#include alfred2
#include xquartz
#include vmware_fusion
#include textmate::textmate2::release

#vagrant::plugin { 'vagrant-vmware-fusion':
#  license => "/Users/${::luser}/Dropbox/Software/Vagrant/fusion-license.lic",
#}

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

#  package { 'solr36':
  #    ensure   => present,
  #  provider => 'homebrew',
  #}


}
