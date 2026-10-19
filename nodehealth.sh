#!/bin/bash 
###################################################

#Author: Siddharth 

#Date :19/10/2026

# this script outputs the node health 
################################################

set -x # debug mode

set -e #exits the code when error is found

set -o pipefail

#set -xeo pipefail # it can be written like this also 


df -h 


free -g 


nproc

ps -ef | grep amazon | awk '{print $2}'



