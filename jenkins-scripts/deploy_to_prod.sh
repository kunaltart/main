#!/bin/bash

# Define variables
TEST_DIR="/home/ubuntu/jenkins/workspace/test"
PROD_DIR="/home/ubuntu/jenkins/workspace/prod"

# Copy files from the test directory to the production directory
echo "Running on $(hostname): Copying files from test to production directory..."
rsync -avz $TEST_DIR/ $PROD_DIR/
echo "Files copied to production directory at $PROD_DIR."
