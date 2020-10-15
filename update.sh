#! /bin/bash

systemctl stop IndoorClimatePid.service
su -s /bin/sh $user -c 'cd /opt/IndoorClimatePi/ && /usr/bin/git pull origin master'
systemctl start IndoorClimatePid.service