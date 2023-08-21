# Enhances the capacity of an Nginx server to manage higher levels of incoming traffic.

# Elevate the ULIMIT value for the default file
exec { 'adjust--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
} ->

# Reboot Nginx
exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
