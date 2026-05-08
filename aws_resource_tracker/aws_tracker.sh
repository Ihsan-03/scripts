#!/bin/bash

####################
# Author: Ihsan
# Date: 29/04/2026

# This script will report the AWS resource usage
- AWS S3 buckets
- AWS EC2 Instances
- AWS Lambda Functions
- AWS IAM Users

# Version: v1
####################

set -x

#List S3 buckets
echo "Print list of S3 buckets"
aws s3 ls

#List EC2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#List lambda 
echo "Print list of lambda functions"
aws lambda list-functions

#List IAM Users
echo "Print list of IAM Users"
aws iam list-users

