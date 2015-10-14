#!/bin/bash

sudo apt-get update
sudo apt-get install -y php5 libapache2-mod-php5

sudo service apache2 restart
