#!/bin/bash

/bin/echo "$( /bin/cat /proc/cpuinfo | /usr/bin/grep MHz | /bin/sed 's/.*: //' | /bin/sed 's/\.[0-9]\{3\}//' | /usr/bin/sort -n | /usr/bin/head -1 )MHz"

exit 0
