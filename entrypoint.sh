#!/bin/sh

aws configure set region eu-west-2 --profile dev-deploy
aws configure set profile.dev-deploy.aws_access_key_id "${AWS-ACCESS-KEY-ID}"
aws configure set profile.dev-deploy.aws_secret_access_key "${AWS-SECRET-ACCESS-KEY}"
npm i -g serverless
serverless deploy --stage dev
