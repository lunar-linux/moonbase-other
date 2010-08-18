(

    make DEB_CFLAGS="-fPIC ${CFLAGS}" pump  &&
    prepare_install  &&
    install -m 755 pump /sbin/  &&
    install -m 644 libpump.a /usr/lib/  &&
    install -m 644 pump.8 /usr/share/man/man8/  &&
    install -m 644 pump.h /usr/include/  &&
    make -C po install datadir="/usr/share/"

) > $C_FIFO 2>&1

