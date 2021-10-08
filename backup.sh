#!/bin/bash

#backup all files from pwd to a backup destination
#script takes only destination path as argument


# read -p "ENTER SOURCE DESTINATION" PROD
PROD=/home/user/shell/prod/

#argument check
if [ $# -ne 1 ]
then
    echo "expected argument=1, as destination path"
    exit1
fi

DESTINATION=$1
#destination path check

# if [[ $DESTINATION != */backup ]]
# then
#     echo"wrong path enter, path must end with backup"
#     exit2
# fi

#Create destination directory
DATE=$(date +%y-%m-%d_%H_%M_%S)
mkdir -p $DESTINATION/$DATE

# copy from prod to destination
cp $PROD/*.pdf $DESTINATION/$DATE

# test exit status of COPY
if [ $? -eq 0 ]
then
    echo "BKP OK"
else
    echo "BKP FAILED"
fi
