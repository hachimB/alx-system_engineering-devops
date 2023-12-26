# Client configuration file (w/ Puppet)
file { "${HOME}/.ssh/config":
  ensure  => 'file',
  content => "HostName 35.175.130.80
User ubuntu
IdentityFile ${HOME}/.ssh/school",
}
