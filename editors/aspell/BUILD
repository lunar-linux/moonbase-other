(

  ./configure  --build=$BUILD                                    \
               --prefix=/usr                                     \
               --sysconfdir=/etc                                 \
               --localstatedir=/var                              \
               --enable-doc-dir=$DOCUMENT_DIRECTORY/$MODULE      \
               $OPTS                                             &&

  default_make                                                   &&
  cp scripts/spell scripts/ispell scripts/aspell-import /usr/bin &&
  chmod 755 /usr/bin/ispell /usr/bin/spell                       &&
  mkdir -p $DOCUMENT_DIRECTORY/aspell/manual                     &&
  cp -p manual/aspell.html/* $DOCUMENT_DIRECTORY/aspell/manual/

) > $C_FIFO 2>&1 
