while read x
do
    echo $x | tr "()" "[]"
done
