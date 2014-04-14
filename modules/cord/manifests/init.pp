class cord {
  package { 'CoRD':
    provider   => 'compressed_app',
    source => 'http://downloads.sourceforge.net/project/cord/cord/0.5.7/CoRD_0.5.7.zip'
  }
}
