(

  ./configure  --prefix=/usr                                \
               --infodir=$DOCUMENT_DIRECTORY/xmms-nebulus   \
               --datadir=/usr/share/xmms-nebulus            &&
  make                                                      &&
  prepare_install                                           &&
  make         install
 
) > $C_FIFO 2>&1
