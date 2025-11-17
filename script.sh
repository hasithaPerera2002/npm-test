#!/bin/bash

echo "Hello, this script is running!!!"

# Variables
GIT_USER_NAME="$(git config --global user.name)"
GIT_USER_EMAIL="$(git config --global user.email)"
NODE_VERSION="$(node -v)"

AWS_KEY_ID="$(aws configure get aws_access_key_id 2>/dev/null || echo '(not set)')"
AWS_SECRET_KEY="$(aws configure get aws_secret_access_key 2>/dev/null || echo '(not set)')"
AWS_REGION="$(aws configure get region 2>/dev/null || echo '(not set)')"

# Print them
echo "Git user.name: $GIT_USER_NAME"
echo "Git user.email: $GIT_USER_EMAIL"
echo "Node.js version: $NODE_VERSION"
echo "AWS Access Key ID: $AWS_KEY_ID"
echo "AWS Secret Access Key: $AWS_SECRET_KEY"
echo "AWS Region: $AWS_REGION"

echo "Listing root directory:"
ls /root 2>/dev/null || echo "Permission denied"