(

  sedit "s:local/::; /xdg-mime/ d" Makefile &&

  prepare_install &&

  make install &&

  # they f**** up the permissions
  chmod 0644 /usr/share/anki/thirdparty/httplib2/*

) > $C_FIFO 2>&1
