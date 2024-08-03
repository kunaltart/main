#!/bin/bash

# Define variables
REPO_URL="https://github.com/kunaltart/main.git"
BRANCH_NAME="develop"
TEST_DIR="/home/jenkins/workspace/test"

# Clone the repository to the test directory
echo "Running on $(worker1): Cloning repository to test directory..."
git clone -b $BRANCH_NAME $REPO_URL $TEST_DIR
echo "Files copied to test directory at $TEST_DIR."
