OPTS+=" -DUDEVDIR=/usr/lib/udev/rules.d -DWITHOUT_PYTHON=TRUE -DWITH_LUA=5.3 -DDEVICES=${DEVICE_LIST//[[:space:]]/;}"
add_priv_group roccat &&
default_cmake_build &&
install -dm2770 -o root -g roccat /var/lib/roccat
