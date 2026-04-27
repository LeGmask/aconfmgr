AddPackage niri # A scrollable-tiling Wayland compositor
AddPackage xdg-desktop-portal-gnome # Backend implementation for xdg-desktop-portal for the GNOME desktop environment
AddPackage --foreign oniri # A tool that automatically maximizes the only window of a niri workspace
AddPackage --foreign nirius # Utility commands for the niri compositor
AddPackage --foreign niri-autoselect-portal-git # Always auto select the niri dynamic cast target without any prompts

# Ecosystem
AddPackage swayidle # Idle management daemon for Wayland
AddPackage hyprlock # hyprland’s GPU-accelerated screen locking utility
AddPackage hyprpaper # a blazing fast wayland wallpaper utility with IPC controls

# Xwayland
AddPackage xwayland-satellite # Xwayland outside your Wayland

# Default directories
command -v xdg-user-dirs-update >/dev/null 2>&1 && xdg-user-dirs-update
command -v xdg-user-dirs-gtk-update >/dev/null 2>&1 && xdg-user-dirs-gtk-update

# Notifications
AddPackage dunst # Customizable and lightweight notification-daemon
AddPackage batsignal # A lightweight battery monitor daemon

# OSD
AddPackage swayosd # A GTK based on screen display for keyboard shortcuts like caps-lock and volume
# SystemdEnable swayosd /usr/lib/systemd/system/swayosd-libinput-backend.service

# Bar
AddPackage waybar # Highly customizable Wayland bar for Sway and Wlroots based compositors

# Launcher
AddPackage --foreign vicinae-bin # Raycast like FOSS app on finux

# Dynamic output configuration
AddPackage kanshi # Dynamic output configuration for Wayland WMs

# Cursor theme
AddPackage --foreign bibata-cursor-theme-bin # Material Based Cursor Theme
