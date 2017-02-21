#!/bin/bash

# Verify that a single argument was provided as input.
if [ $# -ne 1 ] ; then
	echo "Usage: $(basename $0): <file>"
	exit 1
fi

# Verify that the provided file is a regular file.
if [ ! -f $1 ] ; then
	echo "$1 is not a regular file"
	exit 1
fi

# Verify that the provided file has a size larger than zero.
if [ ! -s $1 ] ; then
	echo "$1 has 0 bytes"
fi

# Read the input file and print each line.
while read line ; do
	echo "$line"
done < $1
