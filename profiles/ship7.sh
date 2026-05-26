ModuleLoad networks     networkmanager bluetooth utils
ModuleLoad desktop      dotfiles niri
ModuleLoad apps         entertainment keyboard mail tools
ModuleLoad shell        bash zsh qol utils
ModuleLoad laptop       power

ModuleLoad development  ruby puppet python 
ModuleLoad containers   lxc docker

ModuleLoad work         grifon

SystemdEnable openssh /usr/lib/systemd/system/sshd.service

AddPackage transmission-remote-gtk # GTK remote control for the Transmission BitTorrent client
