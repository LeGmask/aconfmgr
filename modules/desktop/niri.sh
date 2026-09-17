AddPackage niri # A scrollable-tiling Wayland compositor
AddPackage xdg-desktop-portal-gnome # Backend implementation for xdg-desktop-portal for the GNOME desktop environment
AddPackage --foreign oniri # A tool that automatically maximizes the only window of a niri workspace
AddPackage --foreign nirius # Utility commands for the niri compositor
AddPackage --foreign niri-autoselect-portal-git # Always auto select the niri dynamic cast target without any prompts

# Ecosystem
AddPackage swayidle # Idle management daemon for Wayland
AddPackage hyprlock # hyprland’s GPU-accelerated screen locking utility
AddPackage awww # An Answer to your Wayland Wallpaper Woes

# Xwayland
AddPackage xwayland-satellite # Xwayland outside your Wayland

# Default directories
command -v xdg-user-dirs-update >/dev/null 2>&1 && xdg-user-dirs-update
command -v xdg-user-dirs-gtk-update >/dev/null 2>&1 && xdg-user-dirs-gtk-update

# Notifications
AddPackage mako # Lightweight notification daemon for Wayland
AddPackage batsignal # A lightweight battery monitor daemon

# OSD
AddPackage swayosd # A GTK based on screen display for keyboard shortcuts like caps-lock and volume
# SystemdEnable swayosd /usr/lib/systemd/system/swayosd-libinput-backend.service

# Bar
AddPackage waybar # Highly customizable Wayland bar for Sway and Wlroots based compositors

# Launcher
AddPackage --foreign walker # wayland application runner
AddPackage --foreign elephant # general purpose datasource and executor
AddPackage --foreign elephant-desktopapplications # desktopapplications provider for elephant

# Dynamic output configuration
AddPackage kanshi # Dynamic output configuration for Wayland WMs

# Cursor theme
AddPackage --foreign bibata-cursor-theme # Material Based Cursor Theme

# Clipboard
AddPackage wl-clipboard # Command-line copy/paste utilities for Wayland

# dark-mode and light-mode transitions
AddPackage darkman # Framework for dark-mode and light-mode transitions on Linux desktop
