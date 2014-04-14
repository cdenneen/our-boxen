# Public: Install Jumpcut to /Applications.
#
# include jumpcut
class jumpcut {
  package { 'Jumpcut':
    provider => 'compressed_app',
    source => 'http://downloads.sourceforge.net/jumpcut/Jumpcut_0.63.tgz',
  }
}