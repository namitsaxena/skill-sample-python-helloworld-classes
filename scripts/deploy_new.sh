#!/bin/bash
# http://docs.aws.amazon.com/lambda/latest/dg/python-programming-model-handler-types.html
# update below with your
# region, account number, zip file, handler (python file and function) (and python version if needed)
# most of the this information is available if you login
# https://console.aws.amazon.com/lambda/home?region=us-east-1#/

# the role should exist already

# update with correct information
vRegion="us-east-1"
vAccountNumber="112233445566" #update the code with your account number 

aws lambda create-function \
--region us-east-1 \
--function-name HelloWorld \
--zip-file fileb://skill.zip \
--role arn:aws:iam::${vAccountNumber}:role/lambda_basic_execution  \
--runtime python3.8 \
--handler hello_world.handler \
--timeout 15 \
--memory-size 512

