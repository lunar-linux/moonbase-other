(

  patch_it $SOURCE2 0 &&
  FQDN=`hostname`

#  sedit "s/stop_spamd/\#stop_spamd/" t/spamd_maxchildren.t
  if [ -d ~/.spamassassin ]; then
     mv ~/.spamassassin ~/.spamassassin.old
  fi  &&
  echo ""
  echo "Your old ~/.spamassassin directory has been preserved as ~/.spamassassin.old" &&
  echo ""     

#  sedit "s/unpack N16/unpack 'N16'/" lib/Mail/SpamAssassin/SHA1.pm  &&
  [ -d "/etc/mail/spamassassin" ] || mkdir -p /etc/mail/spamassassin

  perl Makefile.PL CONTACT_ADDRESS="postmaster@$FQDN" RUN_RAZOR2_TESTS="n"  &&
  make             &&
  if [ "$TESTS" == "y" ]; then
    make test
  fi               &&
  prepare_install  &&
  make install     &&
  echo ""          &&
  echo "Be sure to read the documentation in /usr/share/doc/spamassassin/doc/spamassassin.html"                     &&
  echo ""

) > $C_FIFO 2>&1
