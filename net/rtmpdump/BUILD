#make SYS=posix CRYPTO="OPENSSL" &&

OPTS+=" prefix=/usr \
        sbindir=/usr/bin \
        mandir=/usr/share/man"

make OPT="$CFLAGS" XLDFLAGS="$LDFLAGS" &&


prepare_install &&
make $OPTS install

#install rtmpdump rtmpgw rtmpsrv rtmpsuck /usr/bin
