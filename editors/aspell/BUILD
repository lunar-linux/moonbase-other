(

  ./configure  --build=$BUILD                                \
               --prefix=/usr                                 \
               --sysconfdir=/etc                             \
               --localstatedir=/var                          \
               --enable-doc-dir=$DOCUMENT_DIRECTORY/$MODULE  \
               $OPTS                                        &&

  default_make                                              &&
  install -m755 scripts/spell scripts/ispell \
                scripts/aspell-import /usr/bin

) > $C_FIFO 2>&1 
