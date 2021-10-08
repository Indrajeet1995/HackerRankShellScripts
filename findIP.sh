#!/bin/bash
#find  IP in  the string and check if that is reachable, INCOMPLETE lesson 24

read -p "Enter the string with IP" VAR1
#checking if only one arg is provided
if[ $# -ne 1 ]
then
    echo "Please enter only one value "
    exit1
fi

#setting up regexp variable to check the string
REGEXP="[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[[:digit:]]{1,3}"

#regex check

if ! [[ $VAR1 =~ $REGEXP ]]
then
    echo "IP not found in string"
    exit2
fi

IP
    
