#!/bin/bash

echo "Installing Apache..."
{
	sudo apt-get update
	sudo apt-get install -qq apache2

	sudo a2enmod rewrite actions ssl

	sudo a2dissite *default

	sudo sed -i "s|<Directory /var/www/>|<Directory /web/>|g" /etc/apache2/apache2.conf
	sudo sed -i "s/AllowOverride None/AllowOverride All/g" /etc/apache2/apache2.conf
	sudo service apache2 restart
} &> /dev/null
echo "...done."
