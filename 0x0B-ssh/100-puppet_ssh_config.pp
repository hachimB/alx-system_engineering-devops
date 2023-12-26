# Client configuration file (w/ Puppet)
file { "${facts['home']}/.ssh":
  ensure => 'directory',
}

file { "${facts['home']}/.ssh/config":
  ensure  => 'file',
  content => "HostName 35.175.130.80
User ubuntu
IdentityFile ${facts['home']}/.ssh/school",
}
