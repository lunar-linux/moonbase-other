(

  #Fixes bug with GTK2 version checking
  patch_it $SOURCE2 1  &&

  ./waf configure --prefix=/usr              \
                  --sysconfdir=/etc          \
                  --localstatedir=/var       \
                  --infodir=/usr/share/info  \
                  --mandir=/usr/share/man    \
                  --enable-addons            \
                  --disable-nls              \
                  $OPTS  &&
  ./waf &&
  prepare_install &&
  ./waf install

) > $C_FIFO 2>&1
