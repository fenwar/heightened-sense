#!/bin/sh
# The USB drives will be busy when the system reboots, so this script needs to
# be triggered at a more appropriate time.

echo "Preparing the USB drive for chroot."

export PFDRV=/tmp/usbmounts/sda1
export PFDAT=/tmp/usbmounts/sda3

# mount usb drive rewritably
umount /tmp/usbmounts/sda1
umount /tmp/usbmounts/sda3
mount -o rw /dev/sda1 /tmp/usbmounts/sda1
mount -o rw /dev/sda3 /tmp/usbmounts/sda3

# enable swap
swapon /dev/sda2

# Bind mount the system FS
mount --rbind /dev $PFDRV/dev
mount --rbind /proc $PFDRV/proc
mount --rbind /sys $PFDRV/sys

# Chroot into the new filesystem and off we go!
#chroot $PFDRV

# Replace web root with ours.
#rm -rf /tmp/www
#ln -s /tmp/ramfs/server/heightened-sense/www /tmp/www

# Kill the running DvdPlayer app and any root apps
#/usr/bin/stopall

# Create our FIFO for sending web keystrokes to DvdPlayer 
#rm /tmp/webkeys
#mknod /tmp/webkeys p

# Start DvdPlayer listening for keystrokes
#cd /usr/local/bin
#tail -f -s0 /tmp/webkeys | DvdPlayer &

