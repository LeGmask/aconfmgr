# NetworkManager
AddPackage networkmanager # Network connection manager and user applications
SystemdEnable networkmanager /usr/lib/systemd/system/NetworkManager.service
AddPackage --foreign networkmanager-dispatcher-chrony # Dispatcher Script for chrony

# Network utils
AddPackage --foreign netcalc # IP network calculator - Simplified clone of sipcalc with ipcalc looks
AddPackage mtr # Combines the functionality of traceroute and ping into one tool (CLI version)
AddPackage whois # Intelligent WHOIS client
AddPackage wireguard-tools # next generation secure network tunnel - tools for configuration

# Bluetooth
AddPackage bluez # Daemons for the bluetooth protocol stack
AddPackage bluez-utils # Development and debugging utilities for the bluetooth protocol stack
SystemdEnable bluez /usr/lib/systemd/system/bluetooth.service
