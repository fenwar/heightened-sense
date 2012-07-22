#!/bin/sh
# The USB drives will be busy when the system reboots, so this script needs to
# be triggered at a more appropriate time.

$PFDRV=/tmp/usbmounts/sda1
$PFDAT=/tmp/usbmounts/sda3

echo "Starting up!"

# mount usb drive rewritably
umount /tmp/usbmounts/sda1
umount /tmp/usbmounts/sda3
mount -o rw /dev/sda1 /tmp/usbmounts/sda1
mount -o rw /dev/sda3 /tmp/usbmounts/sda3

# enable swap

swapon /dev/sda2

# Create our own root fs
# Only needs to be done first time a drive is used.
#mkdir $PFDRV/bin
#mkdir $PFDRV/dev
#mkdir $PFDRV/etc
#mkdir $PFDRV/lib
#mkdir $PFDRV/mnt
#mkdir $PFDRV/proc
#mkdir $PFDRV/sbin
#mkdir $PFDRV/sys
#mkdir $PFDRV/tmp
#mkdir $PFDRV/usr

# Test.fat?
# ln -s bin/busybox linuxrc
# ln -s 

# New for my structure
#mkdir $PFDRV/opt
#mkdir $PFDRV/root

# Bind mount the existing FS for now (as optware won't mind a bit)
# Later on we can figure out which bits we actually need beyond Optware
# or even make /bin, /lib etc point to /opt/bin, /opt/lib. 

mount --bind /bin $PFDRV/bin
mount --bind /dev $PFDRV/dev
mount --bind /etc $PFDRV/etc
mount --bind /lib $PFDRV/lib
mount --bind /mnt $PFDRV/mnt
mount --bind /proc $PFDRV/proc
mount --bind /sbin $PFDRV/sbin
mount --bind /sys $PFDRV/sys
mount --bind /tmp $PFDRV/tmp
mount --bind /usr $PFDRV/usr


# dev



# TODO make this a function


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

