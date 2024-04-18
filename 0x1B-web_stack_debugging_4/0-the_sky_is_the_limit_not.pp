# Increases Traffic Limit
exec { 'change file limit':
  path    => '/bin',
  command => "sed -i 's/15/4096/' /etc/default/nginx"
}
exec { 'restart nginx':
  command => '/usr/sbin/service nginx restart'
}
