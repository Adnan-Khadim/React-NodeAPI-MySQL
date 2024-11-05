#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Navigate to the directory containing the server script
cd /home/ubuntu

# Start the server using PM2
pm2 -f start server.js

echo "Server started successfully."

