#!/bin/sh

# setup recurring with
# launchctl bootstrap gui/$UID home-backup.plist


# -X needed for OS X package files/directories

rsync \
  --archive \
  --xattrs \
  --delete \
  --one-file-system \
  --inplace \
  --exclude-from="$HOME/Documents/src/fuck-timemachine/home-backup.ignorelist" \
  /Users/simontennant simon@bunker.imagilan:/srv/backups/remote-servers/macbook

touch /tmp/home-backup.date
