class site {
  file_line {
    'poor man\'s dns entry for dupond':
      ensure => present,
      line   => '192.168.142.32 dupond dupond.demo',
      path   => '/etc/hosts',
  }
  file_line {
    'poor man\'s dns entry for dupont':
      ensure => present,
      line   => '192.168.142.31 dupont dupont.demo',
      path   => '/etc/hosts',
  }
  service {
    'iptables':
      ensure    => stopped,
      hasstatus => true,
      enable    => false,
  }

}
