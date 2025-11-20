#!/usr/bin/env bash
# Helper script to set up SSH key authentication for dangirsh.org
# This avoids storing passwords in plaintext

echo "Your public SSH key is:"
echo ""
cat ~/.ssh/id_rsa.pub
echo ""
echo "To enable passwordless SSH access:"
echo "1. Log into your NearlyFreeSpeech account at https://members.nearlyfreespeech.net/"
echo "2. Go to your site's SSH/SFTP settings"
echo "3. Add the above public key to authorized keys"
echo ""
echo "Or manually: SSH into the server once with password, then run:"
echo "  mkdir -p ~/.ssh && echo '$(cat ~/.ssh/id_rsa.pub)' >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"
echo ""
echo "After setup, test with: ssh dangirsh.org 'pwd'"
