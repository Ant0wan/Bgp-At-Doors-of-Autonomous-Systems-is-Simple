#!/usr/bin/env bash
sudo virt-install \
--name fed35 \
--ram 2048 \
--vcpus 2 \
--disk path=/var/lib/libvirt/images/fed35.img,size=20 \
--os-variant fedora34 \
--network bridge=br10 \
--graphics none \
--console pty,target_type=serial \
--location 'https://mirror.arizona.edu/fedora/linux/releases/35/Server/x86_64/os/' \
--extra-args 'console=ttyS0,115200n8 serial'
