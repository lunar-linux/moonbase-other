(

  ./configure  --build=$BUILD             \
               --prefix=/usr              \
               --infodir=/usr/share/info  \
               --mandir=/usr/share/man   &&
  default_make                           &&
  make -e TEXMF=$DEST_DIR/usr/share/texmf install-tex

) > $C_FIFO 2>&1
