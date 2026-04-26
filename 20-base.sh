# Base packages
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages
AddPackage linux # The Linux kernel and modules
AddPackage linux-firmware # Firmware files for Linux
AddPackage linux-headers # Headers and scripts for building modules for the Linux kernel

# Base system config
CopyProfileFile /etc/fstab
CopyFile /etc/environment
CopyProfileFile /etc/hostname
CopyProfileFile /etc/hosts
CopyFile /etc/locale.conf
CreateLink /etc/localtime /usr/share/zoneinfo/Europe/Paris
CopyProfileFile /etc/cmdline.d/root.conf
CopyFile /etc/vconsole.conf
CopyProfileFile /etc/makepkg.conf

# System manual
AddPackage man-db # A utility for reading man pages
AddPackage man-pages # Linux man pages

# Specify locales
f="$(GetPackageOriginalFile glibc /etc/locale.gen)"
sed -i 's/^#\(en_US.UTF-8\)/\1/g' "$f"

# Enable Magic SysRq
echo "kernel.sysrq = 1" > "$(CreateFile /etc/sysctl.d/99-sysrq.conf)"

# Systemd
f="$(GetPackageOriginalFile systemd /etc/systemd/journald.conf)"
sed -i 's/^#SystemMaxUse=/SystemMaxUse=512M/g' "$f"

# Btrfs tools
AddPackage btrfs-progs # Btrfs filesystem utilities
AddPackage duperemove # Btrfs extent deduplication utility

# UKI configuration
CopyFile /etc/mkinitcpio.conf
CopyFile /etc/mkinitcpio.d/linux.preset

# systemd-boot
AddPackage --foreign systemd-boot-pacman-hook # Pacman hook to upgrade systemd-boot after systemd upgrade.

# NTP
AddPackage chrony # Lightweight NTP client and server
SystemdEnable chrony /usr/lib/systemd/system/chronyd.service

# Base utils
AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer
AddPackage rsync # A fast and versatile file copying tool for remote and local files
AddPackage git # the fast distributed version control system
AddPackage vim # Vi Improved, a highly configurable, improved version of the vi text editor

# Archlinux pkg mgmt
AddPackage arch-signoff # Sign off Arch Linux testing packages
AddPackage reflector # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.
AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign paru # Feature packed AUR helper
AddPackage pacman-contrib # Contributed scripts and tools for pacman systems
SystemdEnable pacman-contrib /usr/lib/systemd/system/paccache.timer
AddPackage --foreign downgrade # Bash script for downgrading one or more packages to a version in your cache or the A.L.A.
AddPackage --foreign needrestart # Restart daemons after library updates.
AddPackage --foreign pacdiff-pacman-hook-git # Pacman hook to review .pacnew files automatically
CopyFile /etc/pacman.conf
CopyFile /etc/paru.conf

# Security
AddPackage sudo # Give certain users the ability to run some commands as root
AddPackage sbctl # Secure Boot key manager
CopyFile /etc/sudoers

# firmware updates
AddPackage fwupd # Simple daemon to allow session software to update firmware
CopyFile /etc/fwupd/fwupd.conf
