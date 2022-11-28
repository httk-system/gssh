class gssh(
  $path = '/usr/bin/gssh',
) {

  file { $path:
    ensure => 'file',
    source => 'puppet:///modules/gssh/gssh',
    mode => '755',
    links => 'follow',
  }

}
