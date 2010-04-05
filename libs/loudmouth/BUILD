(
  #gnutls >= 2.6 support
  patch_it $SOURCE1 1 &&

  #libtool > 1.5.22 support
  libtoolize --force --copy &&
  autoreconf &&

  #gtk-doc is broken for now
  OPTS="$OPTS --disable-gtk-doc --with-asyncns=yes" &&

  default_build

) > $C_FIFO 2>&1

