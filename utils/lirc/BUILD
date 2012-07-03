(
    ./configure.sh  --build=$BUILD        \
                    --prefix=/usr         \
                    --sysconfdir=/etc     \
                    --localstatedir=/var  \
                    $OPTS                &&
    default_make &&

    install -D -m0644 contrib/lircmd.conf /usr/share/doc/lirc/lircmd.conf &&
    install -D -m0644 contrib/lircd.conf /usr/share/doc/lirc/lircd.conf &&
    install -D -m0644 contrib/lircrc /usr/share/doc/lirc/lircrc

) > $C_FIFO 2>&1
