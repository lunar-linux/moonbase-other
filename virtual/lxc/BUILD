OPTS+=" --exec-prefix=/usr \
        --disable-doc \
        --disable-werror \
        --disable-apparmor" &&

OPTS+=" --sbindir=/usr/bin" &&

if module_installed systemd; then
   OPTS+=" --with-init-script=systemd \
           --with-systemdsystemunitdir=/usr/lib/systemd/system"
fi &&

default_build
