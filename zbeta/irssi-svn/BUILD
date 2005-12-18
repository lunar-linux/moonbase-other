(

  ./autogen.sh $OPTS --build=$BUILD --prefix=/usr --sysconfdir=/etc --localstatedir=/var &&
  make &&
  prepare_install &&
  cp src/fe-text/irssi /usr/bin/irssi-svn &&
  strip /usr/bin/irssi-svn &&
  mkdir -p $DOCUMENT_DIRECTORY/irssi-svn/help
  cp -p docs/* $DOCUMENT_DIRECTORY/irssi-svn
  cp -p docs/help/* $DOCUMENT_DIRECTORY/irssi-svn/help
  rm $DOCUMENT_DIRECTORY/irssi-svn/Makefile*
  rm $DOCUMENT_DIRECTORY/irssi-svn/help/Makefile*
  true

) > $C_FIFO 2>&1
