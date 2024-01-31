OPTS+=" --prefix=/usr \
        --sbindir=/usr/bin \
        --libexecdir=/usr/lib \
        --disable-static \
        --disable-dsa-tests \
        --disable-docs \
        --with-gnutls \
	--with-vpnc-script=/etc/vpnc/vpnc-script" &&

PYTHON=/usr/bin/python ./configure $OPTS &&
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make
