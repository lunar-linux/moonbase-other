(

  if [ -d ~/.spamassassin ]; then
     mv ~/.spamassassin ~/.spamassassin.old
     fi                   &&
  echo ""
  echo "You old /root/.spamassassin directory has been preserved as /root/.spamassassin.old"                        &&
  echo ""
  cd $SOURCE_DIRECTORY    &&
  perl Makefile.PL        &&
  make                    &&
  make test               &&
  prepare_install         &&
  make install            &&
  echo ""                 &&
  echo "Be sure to read the documentation in /usr/share/doc/spamassassin/doc/spamassassin.html"                     &&
  echo ""

) > $C_FIFO 2>&1
