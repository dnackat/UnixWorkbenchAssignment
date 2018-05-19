#!/usr/bin/env bash
# File: arrayplus.sh

array1=(0 1 2 3 4 5 6 7 8 9 10)
array2=(5 7 11 13 17)
sum=$(expr ${#array1[*]} + ${#array2[*]})
echo "Sum of the lengths of arrays: $sum"


