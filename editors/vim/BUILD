(
  
  cat $SCRIPT_DIRECTORY/vim-5.1-vimnotvi.patch | patch -p1    &&
  cat $SCRIPT_DIRECTORY/vim-6.0-fixkeys.patch  | patch -p1    &&
 
  cd $BUILD_DIRECTORY/vim61/src                               &&
  
  ./configure  --prefix=/usr             \
               --bindir=/usr/bin         \
               --sbindir=/usr/sbin       \
               --sysconfdir=/etc         \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --datadir=/usr/share      \
               --localstatedir=/var      &&
  
  rm /usr/bin/vim /usr/bin/vi            &&
  make                                   &&
  prepare_install                        &&
  make install                           &&
  ln  -sf  /usr/bin/vim  /usr/bin/vi     &&
  cp -f $SCRIPT_DIRECTORY/vimrc /usr/share/vim/vim61/sample.vimrc

) > $C_FIFO 2>&1
