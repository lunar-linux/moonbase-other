(

  unset CC CXX                                              &&
  ./configure  --build=$BUILD                               \
               --prefix=/usr                                \
               --sysconfdir=/etc                            \
               --localstatedir=/var                         \
               --enable-doc-dir=/usr/share/doc/$MODULE      \
               $OPTS                                        &&

  default_make                                              &&
  cp scripts/spell scripts/ispell scrips/aspell-import usr/bin

) > $C_FIFO 2>&1 
