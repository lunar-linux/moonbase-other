default_make &&

install -Dm0644 $SCRIPT_DIRECTORY/systemd.d/xl2tpd.service /usr/lib/systemd/system/xl2tpd.service
install -Dm0644 $SCRIPT_DIRECTORY/tmpfiles.d/xl2tpd.tmpfiles /usr/lib/tmpfiles.d/xl2tpd.conf

install -D -m0644 $SCRIPT_DIRECTORY/xl2tpd.conf.client-example /etc/xl2tpd/xl2tpd.conf.client-example
install -D -m0644 $SCRIPT_DIRECTORY/xl2tpd.conf.server-example /etc/xl2tpd/xl2tpd.conf.server-example
install -D -m0644 $SCRIPT_DIRECTORY/options.l2tpd /etc/ppp/options.l2tpd
