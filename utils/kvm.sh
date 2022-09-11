#!/usr/bin/env bash
set -e +h
## KVM: Install
cat /proc/cpuinfo | egrep "vmx|svm"
# KVM Core
sudo dnf -y install bridge-utils libvirt virt-install qemu-kvm
lsmod | grep kvm
# Optional: vm management tools
sudo dnf install libvirt-devel virt-top libguestfs-tools guestfs-tools
sudo systemctl enabled --now libvirtd
# Virtual machine manager GUI
sudo dnf -y install virt-manager

## Network: Create and Configure Bridge Networking For KVM
https://computingforgeeks.com/how-to-install-kvm-on-fedora/
