# create a manifest that kills a process named killmenow
exec { 'kilmenow_using_pkill':
  command => '/usr/bin/pkill -9 killmenow',
  onlyif  => '/usr/bin/pgrep killmenow',
}
