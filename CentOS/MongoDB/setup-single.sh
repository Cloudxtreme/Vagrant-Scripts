#!/bin/bash

echo "Installing MongoDB..."
{
  sudo mv /tmp/mongodb-org-3.2.repo /etc/yum.repos.d/mongodb-org-3.2.repo
	sudo yum install -y mongodb-org
  sudo service mongod start
  sudo chkconfig mongod on
} &> /dev/null
echo "...done."
