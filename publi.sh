#!/usr/bin/env bash
nix-build && rsync -P -vr -e ssh result/ dangirsh_dangirsh@ssh.phx.nearlyfreespeech.net:/home/public/
