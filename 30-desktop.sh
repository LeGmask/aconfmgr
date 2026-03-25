# Display manager
AddPackage ly # TUI display manager
# CreateLink /usr/lib/systemd/system/autovt@tty2.service /usr/lib/systemd/system/ly@tty2.service

# Sound
AddPackage pipewire-alsa # Low-latency audio/video router and processor - ALSA configuration
AddPackage pipewire-pulse # Low-latency audio/video router and processor - PulseAudio replacement
AddPackage pipewire-jack # Low-latency audio/video router and processor - JACK replacement
AddPackage pavucontrol # PulseAudio Volume Control
AddPackage --foreign noisetorch # Real-time microphone noise suppression on Linux.

# Fonts
AddPackage noto-fonts # Google Noto TTF fonts
AddPackage noto-fonts-cjk # Google Noto CJK fonts
AddPackage noto-fonts-emoji # Google Noto Color Emoji font
AddPackage ttf-firacode-nerd # Patched font Fira (Fura) Code from nerd fonts library
AddPackage ttf-jetbrains-mono-nerd # Patched font JetBrains Mono from nerd fonts library
AddPackage ttf-mononoki-nerd # Patched font Mononoki from nerd fonts library
AddPackage ttf-dejavu # Font family based on the Bitstream Vera Fonts with a wider range of characters
AddPackage ttf-liberation # Font family which aims at metric compatibility with Arial, Times New Roman, and Courier New

# Terminal emulator
AddPackage kitty # A modern, hackable, featureful, OpenGL-based terminal emulator

# Secrets
AddPackage gnome-keyring # Stores passwords and encryption keys
AddPackage polkit-gnome # Legacy polkit authentication agent for GNOME
AddPackage seahorse # GNOME application for managing PGP keys
SystemdEnable --type user gcr-4 /usr/lib/systemd/user/gcr-ssh-agent.socket

# utils
AddPackage brightnessctl # Lightweight brightness control tool

# Desktop
AddPackage firefox-developer-edition # Fast, Private & Safe Web Browser (Developer Edition)

# file manager
AddPackage nautilus # Default file manager for GNOME

# Theme
AddPackage papirus-icon-theme # Papirus icon theme

# networks management
AddPackage network-manager-applet # Applet for managing network connections
AddPackage nm-connection-editor # NetworkManager GUI connection editor and widgets

