(

  # patch_it $SOURCE_CACHE/$SOURCE2 1 &&
 
  cd src                                 &&
  
  ./configure  --prefix=/usr             \
               --bindir=/usr/bin         \
               --sbindir=/usr/sbin       \
               --sysconfdir=/etc         \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --datadir=/usr/share      \
               --localstatedir=/var      &&
  
  rm -f /usr/bin/vim /usr/bin/vi         &&
  make                                   &&
  prepare_install                        &&
  ( find /usr/share/vim -type d -exec rmdir {} \; &> /dev/null || true) &&
  make install                           &&
  ln  -sf  /usr/bin/vim  /usr/bin/vi     &&
  cp -f $SCRIPT_DIRECTORY/vimrc /usr/share/vim/vim${MAJOR}/sample.vimrc

) > $C_FIFO 2>&1
