#!/bin/sh

# Desktop
# /dev/nvme0n1 --part 1 is the drive and location of esp
# root UUID is specific to the formated drive.
# TODO variables to organize this code and separate the different parameters
iommu='iommu=pt vfio-pci.ids=1002:73df,1002:ab28'
efibootmgr --disk /dev/nvme0n1 --part 1 --create --label "Archimedes" --loader /vmlinuz-linux-zen --unicode "root=UUID=be3af5c9-dbb3-409c-b7db-497fba3537ef rw $iommu initrd=\amd-ucode.img initrd=\initramfs-linux-zen.img" --verbose
