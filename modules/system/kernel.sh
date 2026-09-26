# Base packages
AddPackage linux # The Linux kernel and modules
AddPackage linux-firmware # Firmware files for Linux
AddPackage linux-headers # Headers and scripts for building modules for the Linux kernel

CopyProfileFile /etc/cmdline.d/root.conf
CopyFile /etc/vconsole.conf

# Enable Magic SysRq
echo "kernel.sysrq = 1" > "$(CreateFile /etc/sysctl.d/99-sysrq.conf)"

# UKI configuration
CopyFile /etc/mkinitcpio.conf
CopyFile /etc/mkinitcpio.d/linux.preset
