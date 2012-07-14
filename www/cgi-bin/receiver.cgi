#!/bin/sh

# Convert incoming decimal to char and send it down our pipe to DvdPlayer
echo -e "`printf \"\\x%x\" $QUERY_STRING`" >> /tmp/webkeys

# Debugging only
#printf \\$(($1/64*100+$1%64/8*10+$1%8)) >> /tmp/webkeylog

# Process incoming keys as strings
#echo $QUERY_STRING >> /tmp/webkeys

# Use this line to process incoming decimal charcodes (not currently working)
#printf \\$(($1/64*100+$1%64/8*10+$1%8)) >> /tmp/webkeys



