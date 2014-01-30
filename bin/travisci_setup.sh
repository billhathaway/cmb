#!/bin/sh
mvn -Dmaven.test.skip=true assembly:assembly
destdir=`pwd`
tar -xzvCf /tmp  $destdir/target/cmb-distribution-*
nohup /tmp/cmb/bin/cmb.sh
