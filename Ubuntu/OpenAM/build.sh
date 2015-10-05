#!/bin/bash

wget https://github.com/mattchoinski/Vagrant-Scripts/raw/master/Ubuntu/OpenAM/external_library/authapi.jar
mv authapi.jar ~/.m2/repository/external/authapi/2005-08-12/authapi-2005-08-12.jar

svn checkout https://svn.forgerock.org/openam/trunk/ openam_svn
mkdir -p ./openam_svn/openam/target/legal-notices

cd ./openam_svn/openam
maven install
