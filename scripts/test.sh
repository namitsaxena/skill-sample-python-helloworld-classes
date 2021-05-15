# code is executed on AWS cloud
# http://docs.aws.amazon.com/lambda/latest/dg/with-userapp-walkthrough-custom-events-invoke.html
# profile is defaunt unless it was changed in aws config (see cat ~/.aws/config in [] section)
# function name is the name given while deploying (and not necessarily the function name in code)

# the test_request.json has been taken from the UI standard template for color expert
# --profile default \

aws lambda invoke \
--invocation-type RequestResponse \
--function-name HelloWorld \
--region us-east-1 \
--log-type Tail \
--payload file://scripts/test_request1.json \
--cli-binary-format raw-in-base64-out \
output.txt 
