OPTS+=" --exec-prefix=/usr \
        --enable-pam \
        --enable-seccomp \
        --enable-capabilities \
        --disable-doc \
        --disable-apparmor"

OPTS+=" --sbindir=/usr/bin"

if module_installed; then
   OPTS+=" --with-init-script=systemd \
           --with-systemdsystemunitdir=/usr/lib/systemd/system"
fi &&

default_build
