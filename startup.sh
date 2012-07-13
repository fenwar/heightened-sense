#!/bin/sh

# This file should be called from /usr/local/etc/rcS on the media player.
# Set up the filesystem there first.

# Replace web root with ours.
rm -rf /tmp/www
ln -s /tmp/ramfs/server/heightened-sense/www /tmp/www


