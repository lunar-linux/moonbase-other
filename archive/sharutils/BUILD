OPTS=$OPTS" --disable-uucode --disable-nls"
(

  ./configure  --build=$BUILD            \
               --prefix=/usr             \
               --sysconfdir=/etc         \
               --localstatedir=/var      \
               $OPTS                     &&
  
  sedit "s/\$(prefix)\/info/\/usr\/share\/info/" doc/Makefile   &&
  sedit "s/\$(prefix)\/man/\/usr\/share\/man/" doc/Makefile     &&
  set +x     && ##turn it off so that the logs stay readable
  make                                                          &&
  prepare_install                                               &&
  make    install                                               &&
  make    install-man
  #install-info  --info-dir=/usr/share/info  /usr/info/sharutils.info

) > $C_FIFO 2>&1

