WHOAMI=$(whoami)

if [ "$WHOAMI" != "user" ]
then
    echo "you are not authorised to read the output"
    exit1
fi
ps -ef | head -3
