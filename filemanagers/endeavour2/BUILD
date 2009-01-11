(

  tar zxvf $SOURCE_CACHE/$SOURCE2
  sedit "s/MAN_DIR   = \$(PREFIX)\/man\//MAN_DIR   = \$(PREFIX)\/share\/man\//" endeavour2/Makefile.install.UNIX
  ./configure linux  &&
  make               &&
  prepare_install    &&
  make install       &&

  [ -e /usr/share/endeavour2/mimetypes.ini ] || cp endeavour2-mimetypes/mimetypes.ini /usr/share/endeavour2

) > $C_FIFO 2>&1
