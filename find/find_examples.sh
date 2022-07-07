#!/bin/bash

# Get the total space used by log files on the system

find / -name *.log -type f -exec du -ch {} + | sort -nr

# Get the top 10 biggest files on the system

find / -type f -exec du -ah {} + | sort -hr | head -n 10
