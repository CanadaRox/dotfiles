#!/bin/bash

echo "$( /usr/bin/sensors | /bin/grep Core | /bin/sed 's/\..*(.*//' | /bin/sed 's/.*+//' | /usr/bin/sort -n | /usr/bin/head -1)°C"

exit 0
