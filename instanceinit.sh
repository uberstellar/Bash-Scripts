#!/bin/bash

#install apache
yum install httpd -y

#start apache
service httpd start

#run updates
yum update -y

#set apache to start after reboot
chkconfig httpd on

#create webpage for testing purposes
echo "It works" > /var/www/html/index.html
