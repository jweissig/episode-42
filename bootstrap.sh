#!/usr/bin/env bash

# update & install
apt-get update
apt-get install -y apache2

# point /var/www at /vagrant mount
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

# restart apache
/etc/init.d/apache2 restart

