#!/bin/sh
docker run -t -i --name ooce -p 8080:8080 -p 8443:8443 -p 5432:5432 -d hpsoftware/ooce:10.70.2
docker exec ooce1070 deploycp.sh 192.168.99.101 8080
echo " OO Build completed at      :" >> /tmp/build
date >> /tmp/build
cat /tmp/build
echo
echo Starting OO...
sleep 5m
echo
echo "Please note the below URLs for your reference"
echo "OO Central URL - https://192.168.99.101:8080"
