(

  ./configure  --prefix=/usr                                \
               --infodir=$DOCUMENT_DIRECTORY/xmms-infinity  \
               --datadir=/usr/share/xmms-infinity           &&
  make                                                      &&
  prepare_install                                           &&
  make         install
 
) > $C_FIFO 2>&1
