#Support java > version 11
sed -i 's/^JAVA_OPTIONS =/JAVA_OPTIONS = --release 11/g' \
    lib/jinterface/java_src/com/ericsson/otp/erlang/Makefile &&

sed -i 's/^LDFLAGS = /LDFLAGS += /g' lib/megaco/src/flex/Makefile.in lib/odbc/c_src/Makefile.in &&

export CPPFLAGS+=" -I/usr/include/webkitgtk-6.0"
export CFLAGS+=' -ffat-lto-objects'

OPTS+=" --enable-threads \
        --enable-shared-zlib \
        --prefix=/usr \
        --enable-pie"

./configure $OPTS &&

default_make &&

mkdir -p /etc/config.d &&
install -Dm644 $SCRIPT_DIRECTORY/epmd.conf /etc/config.d/epmd
