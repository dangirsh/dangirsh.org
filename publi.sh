#!/usr/bin/env bash
# . /home/dan/.nix-profile/etc/profile.d/nix.sh
nix-build && rsync -P -vr --checksum --delete result/ dangirsh.org:/home/public/
