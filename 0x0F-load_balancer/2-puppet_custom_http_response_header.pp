class { 'nginx': }

nginx::resource::server { 'default':
  listen_port          => 80,
  index_files          => ['index.html', 'index.htm', 'index.php'],
  use_default_location => false,
  www_root             => '/var/www/html',
  locations            => {
    'default' => {
      location            => '/',
      location_custom_cfg => { 'add_header' => "X-Served-By ${hostname}" },
    },
  },
}

service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default'],
}
