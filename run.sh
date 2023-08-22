#!/bin/bash

set -xe

# make
qemu-system-i386 -fda build/main_floppy.img

