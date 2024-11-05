#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Navigate to the directory containing the server script
cd /home/ubuntu

# Start the server using PM2 with logging
if pm2 -f start server.js --log /home/ubuntu/server.log; then
    echo "Server started successfully."
else
    echo "Failed to start the server." >&2
    exit 1
fi
