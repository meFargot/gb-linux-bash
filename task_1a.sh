#!/bin/bash

if [ $# -lt 1  ]
then
	echo Usage:
	echo $0 filename
	exit 1
fi

FILE=$1
TMPFILE=/tmp/${FILE}_tmp

cat $FILE > $TMPFILE
tr -s '\n' < $TMPFILE | tr [:lower:] [:upper:] > $FILE
