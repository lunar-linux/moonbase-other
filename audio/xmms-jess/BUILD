(

  ./configure  --prefix=/usr                                \
               --infodir=$DOCUMENT_DIRECTORY/xmms-jess      \
               --datadir=/usr/share/xmms-jess               &&
  make                                                      &&
  prepare_install                                           &&
  make         install
 
) > $C_FIFO 2>&1
