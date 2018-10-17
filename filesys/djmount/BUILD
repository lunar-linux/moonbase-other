OPTS+=" --enable-shared --with-external-talloc --with-external-libupnp --with-libupnp-prefix=/usr" &&

default_build &&

install -D -m644 $SCRIPT_DIRECTORY/djmount.confd /etc/conf.d/djmount &&
#install -D -m644 djmount.service $pkgdir/usr/lib/systemd/system/djmount.service
install -D -m644 $SCRIPT_DIRECTORY/djmount.tmpfilesd /usr/lib/tmpfiles.d/djmount.conf
