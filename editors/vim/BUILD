(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
 
  cd $BUILD_DIRECTORY/vim61/src                               &&
  
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
  make install                           &&
  ln  -sf  /usr/bin/vim  /usr/bin/vi     &&
  cp -f $SCRIPT_DIRECTORY/vimrc /usr/share/vim/vim61/sample.vimrc

) > $C_FIFO 2>&1
