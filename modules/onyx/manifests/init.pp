# Public: Install Onyx to /Applications
#
# Examples
#
#  include onyx
class onyx {

  package { 'Onyx-2.7.3':
    provider => 'appdmg',
    source   => 'https://dl.dropboxusercontent.com/s/vlzwuchby97e6t7/OnyX-2.7.3.dmg',
  }

}
