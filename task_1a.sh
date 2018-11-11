#!/bin/bash

FILE=$1
cat $FILE > /tmp/${FILE}_tmp
TMPFILE=/tmp/${FILE}_tmp
tr -s '\n' < $TMPFILE | tr [:lower:] [:upper:] > $FILE
