#!/bin/bash
aws lambda publish-version --function-name My_Lambda --region us-east-2 --output=text --query Version
version=$(aws lambda publish-version --function-name My_Lambda --output=text --query  'Version') && aws lambda update-alias --function-name My_Lambda --name Dev --function-version $version
