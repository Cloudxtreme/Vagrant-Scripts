#!/bin/bash

sudo apt-get update
sudo apt-get install -qq libapache2-mod-php5 php5 php5-common php5-curl php5-dev php5-mcrypt

sudo service apache2 restart
