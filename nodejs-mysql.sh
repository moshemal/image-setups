#!/bin/bash
./packages.sh

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo apt-get install -y  mysql-server
mysql_secure_installation
