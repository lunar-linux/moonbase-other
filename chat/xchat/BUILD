(
  # Security patch for 2.0.6. Outta be removed for 2.0.7
  
  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  
  gettextize --copy --force --intl &&
  libtoolize --force &&
  aclocal  -I m4 &&
  autoconf &&
  automake -a -c -f --foreign &&

  ./configure  --build=$BUILD            \
               --prefix=/usr             \
               --enable-ipv6             \
               --sysconfdir=/etc         \
               --localstatedir=/var      \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               $OPTS                     &&
  default_make 
) > $C_FIFO 2>&1
