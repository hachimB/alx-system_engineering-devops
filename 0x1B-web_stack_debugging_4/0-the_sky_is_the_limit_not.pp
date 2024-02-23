# 0-the_sky_is_the_limit_not.pp
exec { 'increase-open-files-limit':
  command => '/bin/echo "* soft nofile 4096" >> /etc/security/limits.conf && /bin/echo "* hard nofile 8192" >> /etc/security/limits.conf',
  path    => ['/bin', '/usr/bin'],
  unless  => '/bin/grep -q "* soft nofile 4096" /etc/security/limits.conf && /bin/grep -q "* hard nofile 8192" /etc/security/limits.conf',
}
