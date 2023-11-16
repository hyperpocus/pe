#!/bin/bash

echo "user: "
read user
if [ "${user}" = "gnu" ]; then
echo "Hello gnu"
else
echo "I don't know you"
fi
exit 0