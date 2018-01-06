
  export libusbmuxd_CFLAGS+=" $CFLAGS -I/usr/include/" &&

# Skirt around the ssl bump
  sedit "s:SSLv3_method:SSLv23_method:" src/idevice.c &&

  ./configure --prefix=/usr &&

  make &&
  prepare_install &&
  make install
