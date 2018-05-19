#!/usr/bin/env bash
# File: var1.sh (addition of two variables)

echo "Numbers to add: $1 and $2."
sum=$(expr $1 + $2);
echo "Sum is: $sum"
