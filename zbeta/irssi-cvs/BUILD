(

  ./autogen.sh $OPTS --build=$BUILD --prefix=/usr --sysconfdir=/etc --localstatedir=/var &&
  make &&
  prepare_install &&
  cp src/fe-text/irssi /usr/bin/irssi-cvs &&
  strip /usr/bin/irssi-cvs &&
  mkdir -p $DOCUMENT_DIRECTORY/irssi-cvs/help
  cp -p docs/* $DOCUMENT_DIRECTORY/irssi-cvs
  cp -p docs/help/* $DOCUMENT_DIRECTORY/irssi-cvs/help
  rm $DOCUMENT_DIRECTORY/irssi-cvs/Makefile*
  rm $DOCUMENT_DIRECTORY/irssi-cvs/help/Makefile*
  true

) > $C_FIFO 2>&1
