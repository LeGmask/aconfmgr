AddPackage fprintd # D-Bus service to access fingerprint readers

AddPackage --foreign pam-fprint-grosshack # PAM module enabling simultaneous fingerprint (fprintd) and password authentication

CopyFile /etc/pam.d/polkit-1
CopyFile /etc/pam.d/sudo
