(

  ./configure  --build=$BUILD             \
               --prefix=/usr              \
               --with-root-prefix=        \
               --infodir=/usr/share/info  \
               --mandir=/usr/share/man    \
               --enable-elf-shlibs        \
               --disable-libuuid          \
               --disable-uuidd            \
               --disable-libblkid         \
               --disable-fsck             \
               $OPTS                     &&

  default_make  &&
  make install-libs || exit 1

) > $C_FIFO 2>&1
