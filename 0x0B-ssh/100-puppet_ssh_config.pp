# edit config file for ssh server
include stdlib

file_line { 'disable password auth':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    PasswordAuthentication on',
  replace => true,
}

file_line { 'use private key file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    IdentityFile ~/.ssh/school',
  replace => true,
}
