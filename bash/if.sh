#!/bin/bash

echo "var1: "
read var1
echo "var2: "
read var2
if [ "$var1" = "$var2" ]; then
echo "same"
else
echo "not same"
fi
exit 0