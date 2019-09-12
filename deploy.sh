#!/bin/bash

./load_env.sh

sam package --profile "${PROFILE}" --region "${REGION}" --template-file ./template.yaml --s3-bucket "${S3_BUCKET}" --output-template-file ./packaged.yaml
sam deploy --profile "${PROFILE}" --region "${REGION}" --template-file ./packaged.yaml --stack-name "${STACK_NAME}" --capabilities CAPABILITY_IAM
