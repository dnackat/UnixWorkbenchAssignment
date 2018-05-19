#!/usr/bin/env bash
# File: forloopplus.sh

array=(bah dum tiss shaka laka)

echo "Before loop..."

for i in ${array[*]}
do
	echo "i is equal to $i"
done

echo "After loop"
