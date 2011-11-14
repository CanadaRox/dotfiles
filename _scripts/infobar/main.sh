#!/bin/bash

OUTPUT=""
SCRIPT_PATH="/home/canadarox/.scripts/infobar"

MPD_INFO=$( $SCRIPT_PATH/mpd_info.sh )
if [ -n "$MPD_INFO" ]
then
	OUTPUT="$OUTPUT [$MPD_INFO]"
fi


NET_INFO=$( $SCRIPT_PATH/net_info.sh )
if [ -n "$NET_INFO" ]
then
	OUTPUT="$OUTPUT [$NET_INFO]"
fi

BATT_INFO=$( $SCRIPT_PATH/batt_info.sh )
if [ -n "$BATT_INFO" ]
then
	OUTPUT="$OUTPUT [$BATT_INFO]"
fi

CPU_FREQ=$( $SCRIPT_PATH/cpu_freq.sh )
if [ -n "$CPU_FREQ" ]
then
	OUTPUT="$OUTPUT [$CPU_FREQ]"
fi

CPU_TEMP=$( $SCRIPT_PATH/cpu_temp.sh )
if [ -n "$CPU_TEMP" ]
then
	OUTPUT="$OUTPUT [$CPU_TEMP]"
fi

DATE=$( /bin/date +"%F] [%R" )
if [ -n "$DATE" ]
then
	OUTPUT="$OUTPUT [$DATE]"
fi

/usr/bin/xsetroot -name "$OUTPUT"

exit 0
