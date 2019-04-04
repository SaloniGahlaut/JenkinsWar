#!/bin/bash
aws lambda publish-version --function-name generatecsvfromxls-ms --region us-east-1 --output=text --query Version
version=$(aws lambda publish-version --function-name generatecsvfromxls-ms --output=text --query  'Version') && aws lambda update-alias --function-name generatecsvfromxls-ms --name Dev --function-version $version