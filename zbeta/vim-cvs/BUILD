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
  
  make                                   &&
  prepare_install                        &&
  make install                           &&
  ln  -sf  /usr/bin/vim  /usr/bin/vi     &&
  cp -f $SCRIPT_DIRECTORY/vimrc /usr/share/vim/vim61/sample.vimrc

) > $C_FIFO 2>&1
