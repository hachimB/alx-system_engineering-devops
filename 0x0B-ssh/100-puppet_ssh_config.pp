# Client configuration file (w/ Puppet)
file { '/home/hachim/.ssh/config':
  ensure  => 'file',
  content => 'HostName 35.175.130.80
User ubuntu
IdentityFile ~/.ssh/school',
}
