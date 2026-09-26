AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage base-devel # Basic tools to build Arch Linux packages

# Base system config
CopyFile /etc/environment
CopyFile /etc/locale.conf
CopyProfileFile /etc/hosts
CopyProfileFile /etc/hostname
CopyProfileFile /etc/makepkg.conf
CreateLink /etc/localtime /usr/share/zoneinfo/Europe/Paris

# Specify locales
f="$(GetPackageOriginalFile glibc /etc/locale.gen)"
sed -i 's/^#\(en_US.UTF-8\)/\1/g' "$f"

# System manual
AddPackage man-db # A utility for reading man pages
AddPackage man-pages # Linux man pages

# Systemd
f="$(GetPackageOriginalFile systemd /etc/systemd/journald.conf)"
sed -i 's/^#SystemMaxUse=/SystemMaxUse=512M/g' "$f"

# NTP
AddPackage chrony # Lightweight NTP client and server
SystemdEnable chrony /usr/lib/systemd/system/chronyd.service

# Base utils
AddPackage openssh # SSH protocol implementation for remote login, command execution and file transfer
AddPackage rsync # A fast and versatile file copying tool for remote and local files
AddPackage git # the fast distributed version control system
AddPackage vim # Vi Improved, a highly configurable, improved version of the vi text editor
