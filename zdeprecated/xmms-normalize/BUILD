(
  unset CC CXX                                              &&
  ./configure  --prefix=/usr                                \
               --infodir=$DOCUMENT_DIRECTORY/xmms-normalize \
               --datadir=/usr/share/xmms-normalize          &&
  make                                                      &&
  prepare_install                                           &&
  make         install
 
) > $C_FIFO 2>&1
