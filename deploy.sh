#!/bin/bash

if (( $# < 1 ))
then
    echo "Incorrect usage! deploy.sh TEMPLATE_YAML_FILE"
    exit 1
fi

aws cloudformation deploy \
    --template-file $1 \
    --stack-name codebuild-cfn \
    --capabilities CAPABILITY_NAMED_IAM

exit 0
