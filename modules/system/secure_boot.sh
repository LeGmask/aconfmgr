# Secure Boot
#
# Enroll TPM:
#   sudo systemd-cryptenroll /dev/nvme0n1p3 --wipe-slot tpm2 --tpm2-device=auto \
#   --tpm2-public-key /etc/systemd/tpm2-pcr-public-key-initrd.pem
#
AddPackage sbctl # Secure Boot key manager
AddPackage systemd-ukify # Combine kernel and initrd into a signed Unified Kernel Image

CopyFile /etc/kernel/uki.conf
CopyFile /etc/mkinitcpio.conf.d/systemd-tpm2-setup.conf

mkinitcpio=false
if [ "$aconfmgr_action" = "apply" ] && command -v ukify >/dev/null 2>&1; then
    if [ ! -f /etc/systemd/tpm2-pcr-private-key.pem ] ||
       [ ! -f /etc/systemd/tpm2-pcr-public-key.pem ]; then
        sudo ukify genkey \
            --pcr-private-key=/etc/systemd/tpm2-pcr-private-key.pem \
            --pcr-public-key=/etc/systemd/tpm2-pcr-public-key.pem
        mkinitcpio=true
    fi

    if [ ! -f /etc/systemd/tpm2-pcr-private-key-initrd.pem ] ||
       [ ! -f /etc/systemd/tpm2-pcr-public-key-initrd.pem ]; then
        sudo ukify genkey \
            --pcr-private-key=/etc/systemd/tpm2-pcr-private-key-initrd.pem \
            --pcr-public-key=/etc/systemd/tpm2-pcr-public-key-initrd.pem
        mkinitcpio=true
    fi

    if [ "$mkinitcpio" = true ]; then
        sudo mkinitcpio -P
    fi
fi
