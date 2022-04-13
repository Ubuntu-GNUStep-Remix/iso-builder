#!/bin/sh

add-apt-repository -y --no-update universe
add-apt-repository -y multiverse\

apt-get install -y casper expect gparted \
 cifs-utils language-pack-en language-pack-gnome-en \
 xfsprogs jfsutils reiserfsprogs shim-signed shim ntfs-3g lvm2 \
 dmraid wamerican fwupdate mokutil ubuntu-settings \
 zram-tools

apt-get install -y gnome-shell --no-install-recommends && apt-get purge -y gnome-session ubuntu-session unity-greeter gdm3 mutter

apt-get autoremove -y

apt-get install lightdm gnustep gnustep-games gnustep-examples gnustep-icons gnustep-devel -y

glib-compile-schemas /usr/share/glib-2.0/schemas/

apt-get purge -y budgie-core --auto-remove
