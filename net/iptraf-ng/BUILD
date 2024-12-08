CFLAGS+=" -std=gnu99"

OPTS+=" sbindir_relative=bin \
        prefix=/usr"

make $OPTS &&

prepare_install &&

make $OPTS install &&
install -Dm 644 iptraf-ng-logrotate.conf /etc/logrotate.d/iptraf-ng
