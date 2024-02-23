exec { 'Fix-nginx':
command => '/bin/sed -i "s/15/4096/g" /etc/default/nginx',
path    => '/usr/local/bin/:/bin/',
}

# Restart nginx
exec {'restart':
command => '/etc/init.d/nginx restart',
path    => '/etc/init.d/',
}
