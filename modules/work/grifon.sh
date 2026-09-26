AddPackage keepassxc # Cross-platform community-driven port of Keepass password manager
AddPackage virt-manager # Desktop user interface for managing virtual machines

AddPackage --foreign bgpq4 # BGP filtering automation tool based on IRR data
AddPackage --foreign containerlab # Container-based networking labs
AddPackage --foreign ldapvi # Interactive LDAP client for Unix terminals

if getent group clab_admins >/dev/null && [ "$aconfmgr_action" = "apply" ]; then
    sudo usermod -aG clab_admins $USER
fi
