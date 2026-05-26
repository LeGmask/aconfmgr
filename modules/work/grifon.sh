AddPackage keepassxc # Cross-platform community-driven port of Keepass password manager

AddPackage --foreign bgpq4 # BGP filtering automation tool based on IRR data
AddPackage --foreign containerlab # Container-based networking labs
AddPackage --foreign ldapvi # Interactive LDAP client for Unix terminals

getent group clab_admins >/dev/null && sudo usermod -aG clab_admins $USER
