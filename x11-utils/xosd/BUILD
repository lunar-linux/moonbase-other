(

  ./configure  --prefix=/usr                                \
               --infodir=$DOCUMENT_DIRECTORY/$MODULE  \
               --datadir=/usr/share/$MODULE           &&
  make                                                &&
  prepare_install                                     &&
  make install
 
) > $C_FIFO 2>&1
