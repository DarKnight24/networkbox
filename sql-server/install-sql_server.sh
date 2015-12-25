#!/bin/bash

# source helper functions
. ../helperfunctions.sh

# source configuration
. ../OPTIONS.conf

if [ ! "$FULLINSTALL" = "true" ];
then
	echo "FULLINSTALL=false"
	apt-get -y update
fi

echo "silent mysql-server installation"

export DEBIAN_FRONTEND=noninteractive 	
apt-get -q -y install mysql-server

echo "set password for user root for SQL-Server"
mysqladmin -u root password $SQL_SERVER_ROOT_PASSWORD
