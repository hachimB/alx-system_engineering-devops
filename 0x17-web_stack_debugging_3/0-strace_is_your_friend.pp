file { '/etc/apache2/apache2.conf':
  ensure  => present,
  content => template('apache/apache2.conf.erb'),
  notify  => Service['apache2'],
}

service { 'apache2':
  ensure => running,
  enable => true,
}
