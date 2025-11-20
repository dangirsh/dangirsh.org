#!/usr/bin/env bash
set -e

# Build the site
./build.sh

# Deploy to server
echo "Deploying to server..."
echo "Note: You will be prompted for SSH password"
rsync -P -vr --checksum --delete site/_site/ dangirsh.org:/home/public/
