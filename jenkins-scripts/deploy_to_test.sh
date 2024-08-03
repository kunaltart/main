#!/bin/bash

# Define variables
REPO_URL="https://github.com/kunaltart/main.git"
BRANCH_NAME="develop"
TEST_DIR="/home/ubuntu/jenkins/workspace/test"
WORKER1="ubuntu@172.31.7.173"  # Replace with the actual user and hostname
WORKER2="ubuntu@172.31.13.232"  # Replace with the actual user and hostname

# Clone the repository to the test directory
echo "Running on $(hostname): Cloning repository to test directory..."
ssh -o StrictHostKeyChecking=no $WORKER1 "git clone -b $BRANCH_NAME $REPO_URL $TEST_DIR"
echo "Files copied to test directory at $TEST_DIR."
