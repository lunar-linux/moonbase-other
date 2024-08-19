OPTS+=" -D rootprefix=/usr \
        -D rootlibdir=/usr/lib \
        -D rootlibexecdir=/usr/libexec/elogind \
        -D docdir=/usr/share/doc/elogind \
        -D default-hierarchy=hybrid \
        -D default-kill-user-processes=false"

# -D split-usr=true \

if module_installed openrc; then
    OPTS+="-D cgroup-controller=openrc"
fi

# Avoid a circular dependend with polkit
if module_installed polkit; then
   OPTS+=" -D polkit=true"
else
   OPTS+=" -D polkit=false"
fi

default_meson_build
