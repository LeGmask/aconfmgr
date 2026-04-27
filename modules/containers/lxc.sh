AddPackage lxc # Linux Containers

# network configuration
AddPackage dnsmasq # Lightweight, easy to configure DNS forwarder and DHCP server
cat > "$(CreateFile /etc/default/lxc-net)" <<EOF
USE_LXC_BRIDGE="true"
EOF

# rootless containers
systemd_files+=("system/user@.service.d/delegate.conf")
cat > "$(CreateFile /etc/systemd/system/user@.service.d/delegate.conf)" <<EOF
[Service]
Delegate=cpu cpuset io memory pids
EOF

cat > "$(CreateFile /etc/lxc/lxc-usernet)" <<EOF
$(id -un) veth lxcbr0 10
EOF

