#!/bin/bash

echo "Enter a number: "
read foo
if [ "${foo}" = 2 ]; then
echo "ok foo"
exit 0
else
exit 1
fi