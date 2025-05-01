#!/bin/bash
cd /home/ec2-user/backend || exit 1
echo "Starting Node server..."
node server.js > app.log 2>&1 &
