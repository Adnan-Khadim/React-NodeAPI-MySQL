#!/bin/bash

# Change directory to the application folder
cd /home/ubuntu

# Ensure PM2 is installed
npm install -g pm2

# Start the application with PM2
sudo pm2 -f start server.js

# Optional: Ensure PM2 restarts app on server reboot
pm2 startup systemd
pm2 save
