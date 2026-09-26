AddPackage sbctl # Secure Boot key manager
AddPackage systemd-ukify # Combine kernel and initrd into a signed Unified Kernel Image

CopyFile /etc/kernel/uki.conf
CopyFile /etc/mkinitcpio.conf.d/systemd-tpm2-setup.conf
