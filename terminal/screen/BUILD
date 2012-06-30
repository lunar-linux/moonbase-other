(
  patch_it $SOURCE2 1 &&
  cp $SCRIPT_DIRECTORY/term.sh .  &&

  ./configure  --with-sys-screenrc=/etc/screenrc  \
               --prefix=/usr                      \
               --infodir=/usr/share/info          \
               --mandir=/usr/share/man           &&
  default_make &&
  gather_docs doc/FAQ TODO NEWS.* etc/screenrc &&
  if [ ! -e /etc/screenrc ] ; then
    cp -p etc/etcscreenrc /etc/screenrc
  fi

) > $C_FIFO 2>&1
