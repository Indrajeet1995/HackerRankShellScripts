#!/bin/bash

#create script for printing files, which will display also line numbers

# Argument check
if [ $# -ne 1 ]
then
    echo "only one argument is expected"
    exit1
fi

#check if the provided argument is a file
if ! [ -f "$1" ] 
then
    echo "the provided file does not exist"
    exit2
fi

FILENAME=$1
COUNT=1

while read line
do 
    echo "$COUNT: $line"
    let COUNT++
done < "$FILENAME"

