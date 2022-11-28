class gssh() {

  file { "/usr/bin/gssh":
    ensure => 'file',
    source => 'puppet:///gssh/gssh',
    mode => '755',
  }

}
