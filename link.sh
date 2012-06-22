#!/bin/bash

for FILE in _*
do
	LINKNAME=$(echo $FILE | tr -d _)
	LINKNAME=.$LINKNAME
	if [ -a $HOME/$LINKNAME ] # if the file exists, only create the link if -b is specified
	then
		if [ "$1" = "-b" ]
		then
			mv $HOME/$LINKNAME $HOME/$LINKNAME.bak
			ln -s $(pwd)/$FILE $HOME/$LINKNAME
		fi
	else
		ln -s $(pwd)/$FILE $HOME/$LINKNAME
	fi
done 
