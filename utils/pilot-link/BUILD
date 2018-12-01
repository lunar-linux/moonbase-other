sed -i -e 's:AM_CONFIG_HEADER:AC_CONFIG_HEADERS:' configure.ac &&
export LDFLAGS+=" $LDFLAGS -lm" &&

autoreconf -fi &&

OPTS+=" --with-readline --enable-conduits --enable-threads --without-tcl --includedir=/usr/include/libpisock" &&

if [ "`arch`" == "x86_64" ]; then
  export CFLAGS="$CFLAGS -fPIC"
fi  &&

default_build
