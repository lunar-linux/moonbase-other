(

  patch -p1 < $SCRIPT_DIRECTORY/bsd-finger-0.16-pts.patch                    &&
  patch -p1 < $SCRIPT_DIRECTORY/bsd-finger-0.17-exact.patch                  &&
  patch -p1 < $SCRIPT_DIRECTORY/bsd-finger-0.16-allocbroken.patch            &&
  patch -p1 < $SCRIPT_DIRECTORY/bsd-finger-0.17-rfc742.patch                 &&
  patch -p1 < $SCRIPT_DIRECTORY/bsd-finger-0.17-time.patch                   &&
  patch -p1 < $SCRIPT_DIRECTORY/bsd-finger-0.17-usagi-ipv6.patch             &&

  sedit "s/MANDIR=\"\$PREFIX\/man\"/MANDIR=\"\/usr\/share\/man\"/" configure &&
  ./configure --prefix=/usr                                                  &&

  make             &&
  prepare_install  &&
  make    install       

) > $C_FIFO 2>&1
