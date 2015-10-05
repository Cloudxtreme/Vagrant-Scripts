#!/bin/bash

# This is for the local maven repository!  It's in the user's home directory!
# copying authapi.jar from  openam-10.0.0-extlib.zip to my local maven directory (e.g., cp /tmp/openam-10.0.0-extlib/authapi.jar  ~/.m2/repository/external/authapi/2005-08-12/authapi-2005-08-12.jar)
# wget http://sources.forgerock.org/browse/~raw,r=2075/openam/branches/maven_branch_01/local-maven-support-scripts/authapi/authapi.jar

svn checkout https://svn.forgerock.org/openam/trunk/ openam_svn
mkdir -p ./openam_svn/openam/target/legal-notices

cd ./openam_svn/openam

maven install
