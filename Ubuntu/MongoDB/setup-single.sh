#!/bin/bash

echo "Installing MongoDB 3.2..."
{
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
	echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
	sudo apt-get update
	sudo apt-get install -qq mongodb-org

	sudo mv /tmp/mongodb-disable-hugepages /etc/init.d/disable-transparent-hugepages
	sudo chmod 755 /etc/init.d/disable-transparent-hugepages
	sudo update-rc.d disable-transparent-hugepages defaults
} &> /dev/null
echo "...done."
