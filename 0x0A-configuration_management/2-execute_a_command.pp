# Check if the "killmenow" process exists
exec { 'check_killmenow':
  command     => 'pgrep -f killmenow',
  path        => ['/usr/bin', '/usr/sbin'],
  provider    => shell,
  logoutput   => true,
  onlyif      => 'test -n "$(pgrep -f killmenow)"',  # Only execute if the process exists
}

# Kill the "killmenow" process if it exists
exec { 'killmenow':
  command     => 'pkill -f killmenow',
  path        => ['/usr/bin', '/usr/sbin'],
  provider    => shell,
  logoutput   => true,
  onlyif      => 'test -n "$(pgrep -f killmenow)"',  # Only execute if the process exists
}

