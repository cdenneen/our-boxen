# Public: Install Microsoft Lync to /Applications.
#
# Examples
#
#   include lync
class lync {

  package { 'Lync_Mac_2011-14.0.6_130930':
    provider => 'pkgdmg',
    source   => 'https://dl.dropboxusercontent.com/s/7z4ouewkdcnkcyo/Lync_Mac_2011-14.0.6_130930.dmg',
  }

}
