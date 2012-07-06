class site {
  file_line {
    'poor man\'s dns entry for dupond':
      ensure => present,
      line   => '192.168.142.32 dupond',
      path   => '/etc/hosts',
  }
  file_line {
    'poor man\'s dns entry for dupont':
      ensure => present,
      line   => '191.168.142.31 dupont',
      path   => '/etc/hosts',
  }

}
