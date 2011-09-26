#!/bin/bash
if [ -n "$( mpc 2>&1 | grep 'refused')" ]
then
	exit 0
fi

STATUS=$( mpc | head -2 | tail -1 | sed 's/\[//' | sed 's/\].*//' )

if [ -n "$( echo $STATUS | egrep 'paused|playing' )" ]
then
	TIME=$( mpc | head -2 | tail -1 | perl -pe 's/.*(?=(\d\:\d\d\/\d\:\d\d))//' | sed 's/(.*//' )
	SONG=$( mpc | head -1 );
	
	echo "$SONG ($TIME - $STATUS)"
fi

exit 0
