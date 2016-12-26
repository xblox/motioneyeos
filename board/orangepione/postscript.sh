#!/bin/sh

cp $IMG_DIR/uImage $BOOT_DIR
cp $BOARD_DIR/script.bin $BOOT_DIR

# disable software updating
sed -i 's/enable_update true/enable_update false/' $TARGET/etc/motioneye.conf

