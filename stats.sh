#!/usr/bin/env bash
rsync -P -vr -e "ssh" tput_put@ssh.phx.nearlyfreespeech.net:/home/logs/access_log .
goaccess -f access_log
