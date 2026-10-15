ModuleLoad system       pacman sudo fingerprint
ModuleLoad networks     networkmanager bluetooth utils
ModuleLoad desktop      dotfiles niri
ModuleLoad apps         entertainment keyboard mail tools
ModuleLoad shell        bash zsh qol utils

ModuleLoad development  python k8s
ModuleLoad containers   open

ModuleLoad work         scw

RemoveFile /etc/systemd/system/autovt@tty2.service
RemoveFile /etc/systemd/system/getty@tty1.service.d/noclear.conf
RemoveFile /etc/systemd/system/getty@tty1.service.d/chvt.conf
RemoveFile /etc/systemd/system/multi-user.target.wants/NetworkManager.service

SystemdEnable --name ly@tty7.service ly /usr/lib/systemd/system/ly@.service

AddPackage deja-dup # Easy to use backup tool based on Restic
AddPackage rclone # rsync for cloud storage
