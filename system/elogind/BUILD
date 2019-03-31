OPTS+=" -Drootprefix=/usr \
        -Drootlibdir=/usr/lib \
        -Drootlibexecdir=/usr/libexec/elogind \
        -Ddbuspolicydir=/usr/share/dbus-1/system.d \
        -Ddocdir=/usr/share/doc/elogind \
        -Dcgroup-controller=openrc \
        -Ddefault-hierarchy=hybrid \
        -Ddefault-kill-user-processes=false"

# Avoid a circular dependend with polkit
if module_installed polkit; then
   OPTS+=" -Dpolkit=true"
else
   OPTS+=" -Dpolkit=false"
fi

default_meson_build
