touch INSTALL README &&

autoreconf -fi &&

#./autogen.sh &&

OPTS+=" --without-rtlsdr --sbindir=/usr/bin --disable-jitterentropy" &&

default_build &&

install -Dm0644 $SCRIPT_DIRECTORY/conf.d/rngd.conf /etc/conf.d/rngd
