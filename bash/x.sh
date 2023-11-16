#!/bin/zsh

echo ": "
read var
if [ "x${var}" = "x-x" ]; then
echo "var is -x"
else
echo "var is not -x"
fi
exit 0