# Keyboard customization
AddPackage --foreign kanata # Bring the customizability of a QMK board to any keyboard near you
CopyFile /etc/udev/rules.d/99-input.rules
getent group uinput >/dev/null || sudo groupadd --system uinput