#!/usr/bin/env bash
# Fie; var3.sh (no. of args * first arg)

echo "Number of args: $#"
echo "First argument is: $1"
prod=$(expr $# \* $1)
echo "Their product is: $prod" 
