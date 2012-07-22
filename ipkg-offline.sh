#!/bin/sh
wget http://ipkg.nslu2-linux.org/feeds/optware/oleg/cross/stable/${1}_mipsel.ipk
ipkg-cl -conf ipkg-offline.conf -dest root -t tmp install ${1}_mipsel.ipk 

