(

  export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH &&

  patch_it $SOURCE_CACHE/$SOURCE2 1      &&
  patch_it $SOURCE_CACHE/$SOURCE3 1      &&

  ./configure  --build=$BUILD            \
               --prefix=/usr             \
               --enable-ipv6             \
               --sysconfdir=/etc         \
               --localstatedir=/var      \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               $OPTS                     &&

  make                                   &&
  prepare_install                        &&
  make install

) > $C_FIFO 2>&1
