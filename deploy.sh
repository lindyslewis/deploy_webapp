#!/bin/bash

export PATH="/var/jenkins_home/.local/bin/:$PATH"

echo 'hello from deploy.sh'

stack_name="$1"
echo $stack_name

aws cloudformation create-stack --stack-name "$stack_name" --region "us-east-1"  --template-body file://cloud_formation_template.json
