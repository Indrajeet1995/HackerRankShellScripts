#!/bin/bash

COUNT=1

for ARG in "$@" # "$*" canalso be used but prints all args in one line
do
    echo "$COUNT. argument: $ARG "
    let COUNT++
done