OPTS+=" --exec-prefix=/usr \
        --enable-seccomp \
        --enable-capabilities \
        --disable-doc"

OPTS+=" --sbindir=/usr/bin"

if module_installed; then
   OPTS+=" --with-init-script=systemd \
           --with-systemdsystemunitdir=/usr/lib/systemd/system"
fi &&

default_build
