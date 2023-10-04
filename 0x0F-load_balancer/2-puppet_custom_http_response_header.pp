<<<<<<< HEAD
creates a custom HTTP header response
=======
tes a custom HTTP header response
>>>>>>> afa0d92f6d8e226652cd78df7b920a24e23abe2f
exec { 'command':
  command  => 'apt-get -y update;
  apt-get -y install nginx;
  sudo sed -i "/listen 80 default_server;/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default;
  service nginx restart',
  provider => shell,
}
