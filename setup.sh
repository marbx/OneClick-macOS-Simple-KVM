#!/bin/bash

sudo apt-get install qemu-system qemu-utils python3 python3-pip -y  # for Ubuntu, Debian, Mint, and PopOS.

(ls macOS.qcow2 >> /dev/null 2>&1 && echo "") || qemu-img create -f qcow2 macOS.qcow2 64G

if [ -e BaseSystem.dmg ]
then
    echo "BaseSystem.dmg found, so not fetching it again"
else
    ./fetch-macOS-v2.py
fi

(ls RecoveryImage.dmg >> /dev/null 2>&1 && mv RecoveryImage.dmg BaseSystem.dmg) || echo ""

qemu-img convert BaseSystem.dmg -O raw BaseSystem.img

sudo ./basic.sh
