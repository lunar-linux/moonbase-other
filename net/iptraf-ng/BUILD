CFLAGS+=" -std=gnu99"

OPTS+=" sbindir_relative=bin \
        prefix=/usr"

make $OPTS &&

prepare_install &&

make $OPTS install &&
cp iptraf-ng-logrotate.conf iptraf-ng &&
install -Dm 644 iptraf-ng -t /etc/logrotate.d
