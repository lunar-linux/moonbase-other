EDITOR=`which  $EDITOR  2>/dev/null`  ||
EDITOR=`which  nano`                    &&

(

  ./configure  --prefix=/usr             \
               --with-editor=$EDITOR     \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   &&
  make                                   &&
  prepare_install                        &&
  make    install

) > $C_FIFO 2>&1
