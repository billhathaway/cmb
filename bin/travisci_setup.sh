#!/bin/sh
mvn -Dmaven.test.skip=true assembly:assembly
tar -xzvCf /tmp  target/cmb-distribution-*
(cd /tmp/cmb && nohup bin/cmb.sh &)
