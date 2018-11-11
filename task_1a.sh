#!/bin/bash

if [ $# -lt 1  ]
then
	echo Usage:
	echo $0 filename
	exit 1
fi

FILE=$1
cat $FILE > /tmp/${FILE}_tmp
TMPFILE=/tmp/${FILE}_tmp
tr -s '\n' < $TMPFILE | tr [:lower:] [:upper:] > $FILE
