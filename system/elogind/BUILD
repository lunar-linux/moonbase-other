OPTS+=" -Drootlibdir=/usr/lib \
        -Drootlibexecdir=/usr/libexec/elogind \
        -Ddbuspolicydir=/usr/share/dbus-1/system.d \
        -Dcgroup-controller=openrc \
        -Ddefault-hierarchy=hybrid \
        -Ddefault-kill-user-processes=false"

# Avoid a circular dependend with polkit
if module_installed polkit; then
   OPTS+=" -Dpolkit=true"
else
   OPTS+=" -Dpolkit=false"
fi &&

mkdir -p build &&
meson build $OPTS &&
prepare_install &&
ninja -C build install
