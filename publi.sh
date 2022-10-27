#!/usr/bin/env bash
# . /home/dan/.nix-profile/etc/profile.d/nix.sh
nix-build && rsync -P -vr -e ssh result/ dangirsh_dangirsh@ssh.phx.nearlyfreespeech.net:/home/public/
