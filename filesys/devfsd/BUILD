(

  patch_it $SOURCE2 1

  sedit "s/\/usr\/man/\/usr\/share\/man/" GNUmakefile

  make							&&
  prepare_install					&&
  make install						&&

  install -m700 $SCRIPT_DIRECTORY/init.d/devfsd /etc/init.d/ &&
  install devfsd.conf /etc/devfsd.conf

) > $C_FIFO 2>&1
