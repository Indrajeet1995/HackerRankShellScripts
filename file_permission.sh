#!/bin/bash

#print file permissions user has

if [ $# -ne 1 ]
then
    echo "Provide one argument only"
    exit1
fi

# Assigning arg to $1
FILE=$1

# check if the file exists
if [ -f $FILE ]
then    
    # default variables
    VAR_READ="NO"
    VAR_WRITE="NO"
    VAR_EXE="NO"

    #check if the file is readable
    if [ -r $FILE ]
    then    
        VAR_READ="YES"
    fi

    if [ -w $FILE ]
    then    
        VAR_WRITE="YES"
    fi

    if [ -x $FILE ]
    then
        VAR_EXE="YES"
    fi

    #permission summary
    echo "====FILE PERMISSION====="
    echo "READ:     $VAR_READ"
    echo "WRITE:    $VAR_WRITE"
    echo "EXECUTE:  $VAR_EXE"

else
    if [ -d $FILE ]
    then    
        echo "provided path is a directory not a file"
    else
        echo "$FILE does not exists"
    fi
fi
