#!/bin/bash

# Get the total space used by log files on the system

find / -name *.log -type f -exec du -ch {} + | sort -nr
