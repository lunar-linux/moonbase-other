(

  sedit "s/CFLAGS=-O2 -Wall/CFLAGS=$CFLAGS/" config.mk
  sedit "s/PREFIX=\/usr\/local/PREFIX=\/usr/" config.mk
  sedit "s/#SHARE_INFIX/SHARE_INFIX/" config.mk
  make             &&
  prepare_install  &&
  make install     &&
  mkdir -p $DOCUMENT_DIRECTORY/xzgv  &&
  cp AUTHORS ChangeLog COPYING NEWS TODO $DOCUMENT_DIRECTORY/xzgv

) > $C_FIFO 2>&1
