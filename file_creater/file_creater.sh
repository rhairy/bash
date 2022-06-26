#!/bin/bash

# Creates files of N*5KB size and N*5 minutes ago timestamp for up to range.
# Meant to test commands that evaluate file size and timestamps.

for i in {5..100..5}
do
	# Create file
	bytes=$((1024*i))
	base64 -w 0 /dev/urandom | head -c $bytes > $i.txt
	touch -d "today -$i minutes" $i.txt
done
