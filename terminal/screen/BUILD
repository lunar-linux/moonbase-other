(
  cp $SCRIPT_DIRECTORY/term.sh .    &&

  ./configure  --with-sys-screenrc=/etc/screenrc  \
               --prefix=/usr                      \
	       --infodir=/usr/share/info          \
               --mandir=/usr/share/man            &&
  make                                            &&
  prepare_install                                 &&
  make    install                                 &&
  cp  etc/etcscreenrc /etc/screenrc

) > $C_FIFO 2>&1
