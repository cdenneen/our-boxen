class people::cdenneen::params {
  # $::luser and $::boxen_srcdir come from Boxen's custom facts
  $my_username  = $::luser
  $my_homedir   = "/Users/${::luser}"
  $my_sourcedir = $::boxen_srcdir
}
