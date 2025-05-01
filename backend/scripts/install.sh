#!/bin/bash
cd /home/ec2-user/backend || exit 1
echo "Running npm install..."
npm install >> /home/ec2-user/backend/install.log 2>&1
