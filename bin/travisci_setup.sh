#!/bin/sh
mvn -Dmaven.test.skip=true assembly:assembly
echo "*** Finished mvn"
echo "*** Starting untar into tmp"
tar -xvz -C /tmp -f target/cmb-distribution-*
echo "*** Finished untar into tmp"
(cd /tmp/cmb && nohup bin/cmb.sh &)
echo "*** Ran cmb.sh"
sleep 5
echo "*** checking for cmb process"
ps aux | grep cmb
