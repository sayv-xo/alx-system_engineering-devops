# increase user limit

exec { 'hard file limit':
  command => 'sed -i "/holberton hard/s/5/6969/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}

exec { 'soft file limit':
  command => 'sed -i "/holberton soft/s/4/1024/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}
