#!/bin/bash

sudo apt-get install python-software-properties
sudo apt-get -y install maven
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo apt-get -y install oracle-java7-installer

# The following is originally from: https://github.com/ForgeRock/DevelopmentEnvironment-Ubuntu-Eclipse/blob/master/installSVN1.6onUbuntu14-04.sh
echo "homeDir is $HOME"
tmpDir=$HOME/tmp/svninstall
echo "tmpDir is $tmpDir"
mkdir -p $tmpDir

cp /etc/apt/sources.list $tmpDir

cat $tmpDir/sources.list | sed '$a\deb http://extras.ubuntu.com/ubuntu precise main' > $tmpDir/sources1.list
cat $tmpDir/sources1.list | sed '$a\deb http://de.archive.ubuntu.com/ubuntu/ precise main universe restricted multiverse' > $tmpDir/sources2.list

sudo cp $tmpDir/sources2.list /etc/apt/sources.list
echo subversion install | sudo dpkg --set-selections
echo libsvn1 install | sudo dpkg --set-selections
echo libserf1 install | sudo dpkg --set-selections
echo libsvn-java install | sudo dpkg --set-selections

echo "**** Removing packages. ****"
sudo apt-get -y remove subversion libsvn1 libserf1 libsvn-java
svn --version
sudo apt-get update
echo `apt-cache policy subversion`
echo "**** Installing packages. ****"
sudo apt-get install -y subversion=1.6.17dfsg-3ubuntu3 libsvn1=1.6.17dfsg-3ubuntu3 libserf1=1.0.0-2 libsvn-java=1.6.17dfsg-3ubuntu3

echo "**** Holding packages ****"
echo subversion hold | sudo dpkg --set-selections
echo libsvn1 hold | sudo dpkg --set-selections
echo libserf1 hold | sudo dpkg --set-selections
echo libsvn-java hold | sudo dpkg --set-selections

sudo cp $tmpDir/sources.list /etc/apt/sources.list
