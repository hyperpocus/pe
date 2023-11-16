#!/bin/bash

echo "gnu? :"
read pass
if [ "${pass}" != "gnu" ]; then
echo "I don't know you"
else
echo "Hello gnu!"
fi

exit 0