#!/bin/bash -e

BOARD_DIR=$(dirname $0)
COMMON_DIR=$BOARD_DIR/../common

export BOARD=$(basename $BOARD_DIR)
export IMG_DIR=$BOARD_DIR/../../output/$BOARD/images/
export UBOOT_BIN=$BOARD_DIR/u-boot_OPI.fex
export UBOOT_SEEK=32800

source $COMMON_DIR/mkimage.sh

BOOT0=$BOARD_DIR/boot0_OPI.fex
dd conv=notrunc if=$BOOT0 of=$DISK_IMG bs=1k seek=8

