file { '/etc/default/nginx':
  ensure  => present,
  content => 'ULIMIT="-n 15"',
}

exec { 'fix_limit':
  path     => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command  => "sed -i 's/ULIMIT=\"-n 15\"/ULIMIT=\"-n 3072\"/g' /etc/default/nginx; sudo service nginx restart",
  provider => 'shell',
  require  => File['/etc/default/nginx'],
}
