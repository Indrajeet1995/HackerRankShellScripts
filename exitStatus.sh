#!/bin/bash
#if exit status equals 0 last commnad was successfull

VAR=1

let VAR++
let VAR++
echo "$VAR"

let VAR++
let VAR++
echo "$VAR"

let VAR++
let VAR++
echo "$VAR"

echo "$?"