#!/bin/bash

#########################
# Author: Ihsan
# Date:27/04/2026

# This script checks the basic node health of server:
- Disk usage
- Memory usage
- Prints CPU process

Optional
- It provides snapshot of processes 
- It shows Real time running process

# Version: v1
#########################

set -x # debug mode
set -e # exit the script when there is an error
set -o pipefail

df -h

free -g

nproc

#ps -ef

#top
