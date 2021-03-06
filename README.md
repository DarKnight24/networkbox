# networkbox
Open Source Linux Network out of the Box

## Introduction
This repository contains a couple of scripts, which will set up an easy Linux (Ubuntu) network.
It will contain 3 managed standard users and 3 shares for different purposes.
You will be able to control different groups of clients, distinguished by their hostname.. 

## You will need

1.	A physical network:
	This means we need concrete:
	- cables	we want to boot with tftp.
	- control	we want to control our own unique dhcp – server.

2.	Two "normal" computers.
	- a server and
	- one lonely :-) client.

3.	A bit of interest in:
	- servers, to understand what you are doing
	- scripting, if you like to have full control and all possibilities of linux.

## You will get

![overview](networkbox.png)

An automatic installed network with one server and as many automatic installed clients as you like.
On your physical server you will find following services:

TODO IN FUTURE: in 6. create manager & user; in 7. create all shares
ADDITIONAL DONE: LDAP-Server & Kerberos with LDAP-Backend

1.	nameserver for
	- name & ip resolution
	- dns forwarding

2.	dhcp server:
	- serving ip's
	- serving location of boot images

3.	tftp server:
	- serving boot images

4.	apt cacher
	- caching all dpkg – packages for client installation

5.	laus server:
	- finishing installation and
	- keeping clients up to date (https://github.com/edvapp/autoinstall)
	- installing printers for different groups of hosts.
	- and all other configuration stuff

6.	3 standard users:
	- worker	for sudo work on the clients
	- manager	to manage a “read only” share
	- user		the standard user for everybody

7.	3 shares:
	- progammes:	for programmes just working out of the box with copy and paste
	- material:	read only stuff, like learning material
	- changebox:	read and write for everyone
	
8.	owncloud server
	- serving data in your own cloud
	

