#!/bin/bash

for FILE in _*
do
	LINKNAME=$(echo $FILE | tr -d _)
	LINKNAME=.$LINKNAME
	if [ -a $HOME/$LINKNAME ]
	then
		mv $HOME/$LINKNAME $HOME/$LINKNAME.bak
	fi
	ln -s $(pwd)/$FILE $HOME/$LINKNAME
done 
