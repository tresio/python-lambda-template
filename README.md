This repo contains the basic format for getting started with AWS Lambda and Cloudformation. Use this repo as a template to get started with your next AWS Lambda function.

## Setup

Make sure you've installed the [awscli](https://docs.aws.amazon.com/en_pv/cli/latest/userguide/cli-chap-install.html) and [samcli](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html).

Setup your [aws credentials](https://docs.aws.amazon.com/en_pv/cli/latest/userguide/cli-chap-configure.html).

Set your local environment variables in the [`local_config.env`](./local_config.env) file. You'll need to create an S3 bucket that will house your lambda code.

## Test

To test locally `./test.sh`

## Deploy

Make sure you've setup your [`template.yaml`](./template.yaml) file, as well as set the appropriate environment variables in the [`local_config.env`](./local_config.env) file.

To deploy to your aws account `./deploy.sh`.
