(

  patch_it $SOURCE2 0 &&

  sedit "/^MAN_DIR/s/.*/MAN_DIR=\/usr\/share\/man/;/manpath/d" Makefile  &&
  make ROOT= all   &&
  prepare_install  &&
  make ROOT= install

) > $C_FIFO 2>&1
