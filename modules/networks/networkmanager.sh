AddPackage networkmanager # Network connection manager and user applications
SystemdEnable networkmanager /usr/lib/systemd/system/NetworkManager.service
AddPackage --foreign networkmanager-dispatcher-chrony # Dispatcher Script for chrony
