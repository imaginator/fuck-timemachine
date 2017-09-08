#!/bin/sh

# setup recurring with
# launchctl bootstrap gui/$UID home-backup.plist

# -X needed for OS X package files/directories

rsync \
  -e 'ssh -p 23' \
  --compress \
  --numeric-ids \
  --links \
  --hard-links \
  --one-file-system \
  --itemize-changes \
  --times \
  --recursive \
  --perms \
  --owner \
  --group \
  --stats \
  --human-readable \
  --delete \
  --inplace \
  --exclude-from="$HOME/Documents/src/fuck-timemachine/home-backup.ignorelist" \
  /Users/simontennant simon@bunker.imaginator.com:/srv/backups/remote-servers/macbook

touch /tmp/home-backup.date
