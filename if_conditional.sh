#!/bin/bash

if [ ! $# -eq 2 ]
then
    echo "2 arguments are expected"
    exit 1
fi

FIRST=$1
SECOND=$2

let RESULT=FIRST*SECOND

if [ $? -ne 0 ]
then    
    echo "you need 2 integers only"
    exit 2
else 
    echo " $FIRST * $SECOND = $RESULT "
fi