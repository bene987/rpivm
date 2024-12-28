#!/bin/bash
qemu-img convert -f raw -O qcow2 $1 $2
qemu-img resize $2 32G