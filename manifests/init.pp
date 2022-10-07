class gssh() {

  file { "/usr/bin/gssh":
    ensure => 'file',
    content => 'puppet:///gssh/gssh',
    mode => '755',
  }

}
