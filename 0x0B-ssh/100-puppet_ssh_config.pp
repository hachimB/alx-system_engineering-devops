# Client configuration file (w/ Puppet)
file { "${::home}/.ssh":
  ensure => 'directory',
}

file { "${::home}/.ssh/config":
  ensure  => 'file',
  content => "HostName 35.175.130.80
User ubuntu
IdentityFile ${::home}/.ssh/school",
}
