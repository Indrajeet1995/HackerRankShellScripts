#!/bin/bash

#START TIME measurement from here
START=$(date +%s)
CURRENT_DIRECTORY=$(pwd)
sleep 2
END=$(date +%s)
DIFFERENCE=$(( END - START ))

echo 
echo Time elaspsed $DIFFERENCE seconds 