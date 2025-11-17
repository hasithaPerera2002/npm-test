#!/bin/bash

echo "Hello, this script is running!"

echo "Git user.name: $(git config --global user.name)"
echo "Git user.email: $(git config --global user.email)"

echo "Node.js version: $(node -v)"
echo "AWS Access Key ID: $(aws configure get aws_access_key_id 2>/dev/null || echo '(not set)')"
echo "AWS Secret Access Key: $(aws configure get aws_secret_access_key 2>/dev/null || echo '(not set)')"
echo "AWS Region: $(aws configure get region 2>/dev/null || echo '(not set)')"