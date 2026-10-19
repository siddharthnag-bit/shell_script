#!/bin/bash

#######################################

#created by: siddharth 

#Date : 19 oct 2027

#This script is used to tell the resources of AWS 

################################################


set -x
set -e
set -o pipefail


#This list all the s3 buckets 

aws s3 ls 

#This tells the id of the instances present 

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#This tells the available users in IAM 

aws iam list-users | jq '.Users[].UserName'


