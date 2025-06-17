#!/bin/bash

#This script will create selinux issues in three difficulties; easy, normal and hard mode. It is a script made to create labs for selinux practice. Although there are only three potential issues, repeating these tasks will enhance overall selinux proficiency.

echo "WARNING!!! You are attempting an SELinux lab that WILL create intentional SELinux issues, meaning it WILL modify current SELinux contexts/policies."

echo "There are three lab difficulties: easy, normal, and hard."
read -p "Which difficulty would you like to try? " scale

if [[ $scale == "easy" ]]; then
	echo "Setting paramaters..."
	semanage fcontext --deleteall
	semanage port --deleteall
	[ -d "/srv/web/html" ] || mkdir -pv "/srv/web/html"
	echo "congrats, you fixed the error and completed the task!" > /srv/web/html/index.html
	sed 's/DocumentRoot ".*"/DocumentRoot "\/srv\/web\/html"/' /etc/httpd/conf/httpd.conf

elif [[ $scale == "normal" ]]; then
	echo "normal mode in progress"
elif [[ $scale == "hard" ]]; then
	echo "hard mode in progress"
else
	echo "bye"
fi

sed 's/DocumentRoot .*/DocumentRoot /srv/web/html/' /etc/httpd/conf/httpd.conf
