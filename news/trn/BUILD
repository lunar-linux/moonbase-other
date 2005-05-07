./Configure  -Dprefix=/usr -d  &&

(

  make             &&
  prepare_install  &&
  make    install  &&
  make    installclean

) > $C_FIFO 2>&1
