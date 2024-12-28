#!/bin/bash
qemu-system-aarch64 -machine virt -accel hvf -cpu cortex-a76 -smp 4 -m 4G \
    -kernel vmlinuz -append "root=LABEL=writable rootfstype=ext4 rw panic=0 console=ttyAMA0" \
    -initrd initrd.img \
    -drive format=qcow2,file=$1,if=none,id=hd0,cache=writeback \
    -device virtio-blk,drive=hd0,bootindex=0 \
    -netdev user,id=mynet,hostfwd=tcp::2222-:22 \
    -device virtio-net-pci,netdev=mynet \
    -monitor telnet:127.0.0.1:5555,server,nowait \
    -device virtio-gpu \
    -device nec-usb-xhci,id=usb-bus \
    -device usb-tablet \
    -device usb-mouse \
    -device usb-kbd \
    -device qemu-xhci,id=usb-controller-0 