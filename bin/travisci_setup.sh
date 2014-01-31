#!/bin/sh
mvn -Dmaven.test.skip=true assembly:assembly
echo "Finished mvn"
tar -xzvCf /tmp  target/cmb-distribution-*
echo "Unpacking distribution in /tmp"
(cd /tmp/cmb && nohup bin/cmb.sh &)
echo "Ran cmb.sh"
sleep 3
ps aux | grep cmb
