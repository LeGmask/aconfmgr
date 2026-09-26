AddPackage arch-signoff # Sign off Arch Linux testing packages
AddPackage pacman-contrib # Contributed scripts and tools for pacman systems
AddPackage reflector # A Python 3 module and script to retrieve and filter the latest Pacman mirror list.

AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux
AddPackage --foreign downgrade # Bash script for downgrading one or more packages to a version in your cache or the A.L.A.
AddPackage --foreign needrestart # Restart daemons after library updates.
AddPackage --foreign pacdiff-pacman-hook-git # Pacman hook to review .pacnew files automatically
AddPackage --foreign paru # Feature packed AUR helper

SystemdEnable pacman-contrib /usr/lib/systemd/system/paccache.timer

CopyFile /etc/pacman.conf
CopyFile /etc/paru.conf
