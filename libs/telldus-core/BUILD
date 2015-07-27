unset CFLAGS
add_priv_user tellstick:tellstick -G "tellstick,uucp" -M -d /dev/null &&
touch Doxyfile.in &&  
default_cmake_build &&
chown tellstick:tellstick /var/state/telldus-core.conf &&
chmod 644 /var/state/telldus-core.conf
