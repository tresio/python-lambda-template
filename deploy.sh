#!/bin/bash

# check if awscli is installed
aws --version >> /dev/null || ( echo "awscli not installed" && exit 1 )

# check if samcli is installed
sam --version >> /dev/null || ( echo "samcli not installed" && exit 1 )

# load the env file
set -a
. ./local_config.env || ( echo "local_config.env file doesn't exist, exiting" && exit 0 )
set +a

# run the deploy steps
sam package --profile "${PROFILE}" --region "${REGION}" --template-file ./template.yaml --s3-bucket "${S3_BUCKET}" --output-template-file ./packaged.yaml
sam deploy --profile "${PROFILE}" --region "${REGION}" --template-file ./packaged.yaml --stack-name "${STACK_NAME}" --capabilities CAPABILITY_IAM
