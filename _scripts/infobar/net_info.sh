#!/bin/bash

WIRED_INFO=$( /usr/bin/wicd-cli --wired -d )

if [ -n "WIRED_INFO" ]
then
	WIRELESS_INFO=$( /usr/bin/wicd-cli --wireless -d )
	ESSID=$( /bin/echo $WIRELESS_INFO | /bin/sed 's/.*Essid: //' | /bin/sed 's/ .*//' )
	IP=$( /bin/echo $WIRELESS_INFO | /bin/sed 's/.*IP: //' | /bin/sed 's/ Essid.*//' )
	/bin/echo "$IP - $ESSID"
fi

exit 0
