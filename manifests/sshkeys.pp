class site::sshkeys {
  file {
    '/var/lib/pgsql/.ssh':
      ensure => directory,
      mode   => '0700',
      owner  => 'postgres',
      group  => 'postgres',
  }
  file {
    '/var/lib/pgsql/.ssh/id_rsa':
      ensure  => present,
      source  => 'puppet:///modules/site/postgres_rsa',
      mode    => '0600',
      owner   => 'postgres',
      group   => 'postgres',
      require => File['/var/lib/pgsql/.ssh'],
  }
  file {
    '/var/lib/pgsql/.ssh/id_rsa.pub':
      ensure => present,
      source => 'puppet:///modules/site/postgres_rsa.pub',
      mode   => '0644',
      owner  => 'postgres',
      group  => 'postgres',
      require => File['/var/lib/pgsql/.ssh'],
  }
  file {
    '/var/lib/pgsql/.ssh/authorized_keys':
      ensure => present,
      source => 'puppet:///modules/site/postgres_rsa.pub',
      mode   => '0644',
      owner  => 'postgres',
      group  => 'postgres',
      require => File['/var/lib/pgsql/.ssh'],
  }
}
