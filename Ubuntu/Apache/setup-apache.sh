#!/bin/bash

sudo apt-get update
sudo apt-get install -qq apache2

sudo a2enmod rewrite actions ssl

sudo service apache2 restart
