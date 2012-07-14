#!/bin/sh

# This file should be called from /usr/local/etc/rcS on the media player.
# Set up the filesystem there first.

# Replace web root with ours.
rm -rf /tmp/www
ln -s /tmp/ramfs/server/heightened-sense/www /tmp/www

# Kill the running DvdPlayer app and any root apps
/usr/bin/stopall

# Create our FIFO for sending web keystrokes to DvdPlayer 
rm /tmp/webkeys
mknod /tmp/webkeys p

# Start DvdPlayer listening for keystrokes
cd /usr/local/bin
tail -f -s0 /tmp/webkeys | DvdPlayer &

