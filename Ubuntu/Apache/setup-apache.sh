#!/bin/bash

#echo "hostname" > /etc/hostname
#hostname -F /etc/hostname

sudo apt-get update
sudo apt-get install -qq apache2

sudo a2enmod rewrite actions ssl

#sudo mkdir /etc/apache2/ssl
#sudo openssl req -x509 -nodes -days 1825 -newkey rsa:2048 -keyout /etc/apache2/ssl/apache.key -out /etc/apache2/ssl/apache.crt

sudo service apache2 restart

#sudo nano /etc/iptables.firewall.rules
#
#*filter
#
## Allow all loopback (lo0) traffic and reject traffic
## to localhost that does not originate from lo0.
#-A INPUT -i lo -j ACCEPT
#-A INPUT ! -i lo -s 127.0.0.0/8 -j REJECT
#
## Allow ping.
#-A INPUT -p icmp -m state --state NEW --icmp-type 8 -j ACCEPT
#
## Allow SSH connections.
##  The -dport number should be the same port number you set in sshd_config
#-A INPUT -p tcp --dport 22 -m state --state NEW -j ACCEPT
#
## Allow HTTP and HTTPS connections from anywhere
## (the normal ports for web servers).
#-A INPUT -p tcp --dport 80 -m state --state NEW -j ACCEPT
#-A INPUT -p tcp --dport 443 -m state --state NEW -j ACCEPT
#
## Allow inbound traffic from established connections.
## This includes ICMP error returns.
#-A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
#
## Log what was incoming but denied (optional but useful).
#-A INPUT -m limit --limit 5/min -j LOG --log-prefix "iptables_INPUT_denied: " --log-level 7
#
## Reject all other inbound.
#-A INPUT -j REJECT
#
## Log any traffic which was sent to you
## for forwarding (optional but useful).
#-A FORWARD -m limit --limit 5/min -j LOG --log-prefix "iptables_FORWARD_denied: " --log-level 7
#
## Reject all traffic forwarding.
#-A FORWARD -j REJECT
#
#COMMIT
#
#sudo iptables-restore < /etc/iptables.firewall.rules
#sudo nano /etc/network/if-pre-up.d/firewall
#sudo chmod +x /etc/network/if-pre-up.d/firewall

# TODO: Change the sshd_config if necessary;
#sudo nano /etc/ssh/sshd_config
#sudo service ssh restart

#sudo a2dissite *default
#sudo service apache2 restart

#sudo groupadd [Group Name]
#sudo usermod -a -G [Group Name] www-data
#sudo mkdir -p /web/[Web Application]/{app,log}
#sudo chown -R [User Name] /web/[Web Application]/app/
#sudo chgrp -R [Group Name] /web/[Web Application]/app/
#sudo nano /etc/apache2/sites-available/[Web Application].conf
#sudo a2ensite [Web Application].conf
