export TLP_NO_INIT='1' &&
export TLP_WITH_SYSTEMD='0' &&
export TLP_WITH_ELOGIND='0' &&
export TLP_SBIN='/usr/bin' &&
export TLP_ULIB='/usr/lib/udev' &&

if module_installed systemd; then
   export TLP_SDSL=/usr/lib/systemd/system-sleep &&
   export TLP_SYSD='/usr/lib/systemd/system' &&
   export TLP_WITH_SYSTEMD='1'
fi &&

prepare_install &&

make install-tlp install-man &&

if in_depends $MODULE NetworkManager; then
   make install-rdw install-man-rdw
fi
