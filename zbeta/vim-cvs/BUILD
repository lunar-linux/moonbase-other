(
   patch_it $SOURCE_CACHE/$SOURCE2 0      &&
  
  ./configure  --prefix=/usr             \
               --bindir=/usr/bin         \
               --sbindir=/usr/sbin       \
               --sysconfdir=/etc         \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --datadir=/usr/share      \
               --localstatedir=/var      \
               --with-features=big       \
               $OPTS                    &&
  
  default_make                           &&
  ln  -sf  /usr/bin/vim  /usr/bin/vi     

) > $C_FIFO 2>&1
