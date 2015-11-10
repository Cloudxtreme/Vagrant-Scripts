#!/bin/bash

# TODO: Complete the following...
# The following is based on this: https://gist.github.com/wouterd/6624764

#mongo --host 192.168.42.100 << 'EOF'
#config = { _id: "bogus-replica-set", members:[
#          { _id : 0, host : "192.168.42.100:27017"},
#          { _id : 1, host : "192.168.42.110:27017"},
#          { _id : 2, host : "192.168.42.120:27017"} ]
#         };
#rs.initiate(config);
#rs.status();
#EOF

#Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
#  # All Vagrant configuration is done here. The most common configuration
#  # options are documented and commented below. For a complete reference,
#  # please see the online documentation at vagrantup.com.
#
#  # Every Vagrant virtual environment requires a box to build off of.
#  config.vm.box = "centos64"
#
#  # The url from where the 'config.vm.box' box will be fetched if it
#  # doesn't already exist on the user's system.
#  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130427.box"
#
#  config.vm.provider "virtualbox" do |v|
#    v.customize ["modifyvm", :id, "--cpus", "2"]
#  end
#
#  config.vm.define :mongo1 do |mongo1|
#    mongo1.vm.network :private_network, ip: "192.168.42.100"
#    mongo1.vm.provision "shell", inline: $mongoInitScript
#  end
#
#  config.vm.define :mongo2 do |mongo2|
#    mongo2.vm.network :private_network, ip: "192.168.42.110"
#    mongo2.vm.provision "shell", inline: $mongoInitScript
#  end
#
#  config.vm.define :mongo3 do |mongo3|
#    mongo3.vm.network :private_network, ip: "192.168.42.120"
#    mongo3.vm.provision "shell", inline: $mongoInitScript
#  end
#
#end
