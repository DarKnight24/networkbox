#!/bin/bash

# install bind9 DNS dns_nameservers

# install bind9 dpkg - package
apt-get -y update
apt-get -y install bind9

service bind9 stop

# add own ip to dns_nameservers in /etc/network/interfaces
/bin/bash change-etc_network_interfaces.sh
# add dns - servers to forwarders in /etc/bind/named.conf.options
/bin/bash change-etc_bind_named.conf.options.sh
# add zone files to /etc/bind/named.conf.local
/bin/bash change-etc_bind_named.conf.local.sh
# write zone - files
/bin/bash write-zonefile.sh
# write reverse - zone - files
/bin/bash write-reversezonefile.sh

service bind9 start