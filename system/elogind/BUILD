OPTS+=" -D rootprefix=/usr \
        -D rootlibdir=/usr/lib \
        -D rootlibexecdir=/usr/libexec/elogind \
        -D dbuspolicydir=/usr/share/dbus-1/system.d \
        -D docdir=/usr/share/doc/elogind \
        -D cgroup-controller=openrc \
        -D default-hierarchy=hybrid \
        -D default-kill-user-processes=false"

# Avoid a circular dependend with polkit
if module_installed polkit; then
   OPTS+=" -D polkit=true"
else
   OPTS+=" -D polkit=false"
fi

default_meson_build
