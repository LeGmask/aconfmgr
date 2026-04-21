AddPackage bluez # Daemons for the bluetooth protocol stack
AddPackage bluez-utils # Development and debugging utilities for the bluetooth protocol stack
SystemdEnable bluez /usr/lib/systemd/system/bluetooth.service
