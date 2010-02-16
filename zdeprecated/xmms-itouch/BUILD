(

  ./configure  --prefix=/usr                                \
               --infodir=$DOCUMENT_DIRECTORY/xmms-itouch    \
               --datadir=/usr/share/xmms-itouch             &&
  make                                                      &&
  prepare_install                                           &&
  make         install
 
) > $C_FIFO 2>&1
