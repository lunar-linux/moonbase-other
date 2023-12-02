
OPTS+=" --bindir=/usr/bin \
        --enable-pie      \
        --enable-client   \
        --enable-ethernet \
        --enable-loopback \
        --enable-polkit \
        --enable-nmcompat \
        --enable-pptp \
        --enable-tools "

if module_installed systemd; then
   OPTS+=" --with-systemdunitdir=/usr/lib/systemd/system"
fi

default_build
