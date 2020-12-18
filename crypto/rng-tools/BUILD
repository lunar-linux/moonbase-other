touch INSTALL README &&
./autogen.sh &&

OPTS+=" --without-rtlsdr" &&

default_build &&

install -Dm0644 $SCRIPT_DIRECTORY/conf.d/rngd.conf /etc/conf.d/rngd
