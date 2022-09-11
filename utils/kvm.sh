#!/usr/bin/env bash
set -e +h
## KVM: Install
cat /proc/cpuinfo | egrep "vmx|svm"
# KVM Core
sudo dnf -y install bridge-utils libvirt virt-install qemu-kvm
lsmod | grep kvm
# Optional: vm management tools
sudo dnf -y install libvirt-devel virt-top libguestfs-tools guestfs-tools
sudo systemctl enable --now libvirtd
# Virtual machine manager GUI
sudo dnf -y install virt-manager

## Disk
#https://computingforgeeks.com/how-to-mount-vm-virtual-disk-on-kvm-hypervisor/

## Network: Create and Configure Bridge Networking For KVM
#https://computingforgeeks.com/how-to-install-kvm-on-fedora/
sudo virsh net-define br10.xml
sudo virsh net-start br10
sudo virsh net-autostart br10

#. test-instance.sh
## Login to instance
#sudo virsh console fed35
