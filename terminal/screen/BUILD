(
  cp $SCRIPT_DIRECTORY/term.sh .  &&

  ./configure  --with-sys-screenrc=/etc/screenrc  \
               --prefix=/usr                      \
	       --infodir=/usr/share/info          \
               --mandir=/usr/share/man           &&
  default_make
  cp etc/etcscreenrc /etc/screenrc

) > $C_FIFO 2>&1
