add_priv_group usb &&
add_priv_user tellstick:tellstick -G "tellstick,usb" -M -d /dev/null &&
default_cmake_build &&
chown tellstick:tellstick /var/state/telldus-core.conf &&
chmod 644 /var/state/telldus-core.conf
