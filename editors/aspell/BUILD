(

  patch_it  $SOURCE_CACHE/$SOURCE2 1 &&

  unset CC CXX                                                   &&
  ./configure  --build=$BUILD                                    \
               --prefix=/usr                                     \
               --sysconfdir=/etc                                 \
               --localstatedir=/var                              \
               --enable-doc-dir=/usr/share/doc/$MODULE           \
               $OPTS                                             &&

  default_make                                                   &&
  cp scripts/spell scripts/ispell scripts/aspell-import /usr/bin &&
  chmod 755 /usr/bin/ispell /usr/bin/spell

) > $C_FIFO 2>&1 
