ModuleLoad linux        zram
ModuleLoad networks     networkmanager bluetooth utils
ModuleLoad desktop      dotfiles niri
ModuleLoad apps         entertainment keyboard mail tools games
ModuleLoad shell        bash zsh qol utils
ModuleLoad laptop       power

ModuleLoad work         ulhpc

ModuleLoad development  ruby puppet python go shell
ModuleLoad containers   open

# Custom requirements
AddPackage bolt # Thunderbolt 3 device manager

# Custom files
CopyProfileFile /etc/pacman.conf
