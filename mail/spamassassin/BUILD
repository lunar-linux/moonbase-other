(

  sedit "s/stop_spamd/\#stop_spamd/" t/spamd_maxchildren.t
  if [ -d ~/.spamassassin ]; then
     mv ~/.spamassassin ~/.spamassassin.old
  fi                                            &&
  echo ""
  echo "Your old ~/.spamassassin directory has been preserved as ~/.spamassassin.old" &&
  echo ""     
 
  sedit "s/unpack N16/unpack 'N16'/" lib/Mail/SpamAssassin/SHA1.pm &&
  default_config                                 &&
  perl Makefile.PL                               &&
  make                    &&
  make test               
  prepare_install         &&
  make install            &&
  echo ""                 &&
  echo "Be sure to read the documentation in /usr/share/doc/spamassassin/doc/spamassassin.html"                     &&
  echo ""

) > $C_FIFO 2>&1
