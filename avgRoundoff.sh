# Given N integers, compute their average, rounded to three decimal places.
#!/bin/bash

read n
arr=($(cat))
arr=${arr[*]}
printf "%.3f" $(echo $((${arr// /+}))/$n | bc -l)