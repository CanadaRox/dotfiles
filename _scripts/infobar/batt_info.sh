#!/bin/bash

typeset -i BATT_CHARGE=$( /bin/cat /proc/acpi/battery/BAT0/state | /usr/bin/head -5 | /usr/bin/tail -1 | /bin/tr -cd [0-9] )
typeset -i BATT_MAX=$( /bin/cat /proc/acpi/battery/BAT0/info | /usr/bin/head -3 | /usr/bin/tail -1 | /bin/tr -cd [0-9] )
typeset -i BATT_PERCENT=$[ $BATT_CHARGE * 100 / $BATT_MAX ]
typeset -i BATT_RATE=$( /bin/cat /proc/acpi/battery/BAT0/state | /usr/bin/head -4 | /usr/bin/tail -1 | /bin/tr -cd [0-9] )

BATT_HOURS=$(( $BATT_CHARGE / $BATT_RATE ))
BATT_MINUTES=$( /bin/echo "( $BATT_CHARGE % $BATT_RATE ) * 60 / $BATT_RATE" | /usr/bin/bc )

if [ ${#BATT_MINUTES} \< 2 ]
then
	BATT_MINUTES=0$BATT_MINUTES
fi

if [ -z "$( /bin/cat /proc/acpi/ac_adapter/ADP1/state | /bin/grep on-line )" ]
then
	BATT_ESTIMATE=" ($BATT_HOURS:$BATT_MINUTES)"
else
	BATT_ESTIMATE=" (charging)"
fi

/bin/echo "$BATT_PERCENT%$BATT_ESTIMATE"

exit 0
0

