# Puppet file that fixes multiple server errors in Nginx server

exec { 'change-os-configuration-for-holberton-user':
  command  => 'ulimit -n 4096',
  path     => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  provider => 'shell',
}


