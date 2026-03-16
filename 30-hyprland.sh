# Hyprland
AddPackage hyprland # a highly customizable dynamic tiling Wayland compositor

# Default directories
xdg-user-dirs-update
xdg-user-dirs-gtk-update

# Hyprland's ecosystem
AddPackage hypridle # hyprland’s idle daemon
AddPackage hyprlock # hyprland’s GPU-accelerated screen locking utility
AddPackage hyprpaper # a blazing fast wayland wallpaper utility with IPC controls
AddPackage hyprpicker # A wlroots-compatible Wayland color picker that does not suck

# Screenshots
AddPackage --foreign grimblast-git # A helper for screenshots within Hyprland.

# Notifications
AddPackage dunst # Customizable and lightweight notification-daemon
AddPackage batsignal # A lightweight battery monitor daemon

# OSD
AddPackage swayosd # A GTK based on screen display for keyboard shortcuts like caps-lock and volume
SystemdEnable swayosd /usr/lib/systemd/system/swayosd-libinput-backend.service

# Bar
AddPackage waybar # Highly customizable Wayland bar for Sway and Wlroots based compositors

# Display management
AddPackage nwg-displays # Output management utility for sway and Hyprland Wayland compositors

# Launcher
AddPackage fuzzel # Application launcher for wlroots based Wayland compositors

# Dynamic output configuration
AddPackage kanshi # Dynamic output configuration for Wayland WMs
