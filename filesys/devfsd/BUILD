(

  sedit "s/\/usr\/man/\/usr\/share\/man/" GNUmakefile

  make							&&
  prepare_install					&&
  make install						&&

  cp -f $SCRIPT_DIRECTORY/init.d/devfsd /etc/init.d/	&&
  chmod 700 /etc/init.d/devfsd				&&

  cp $SCRIPT_DIRECTORY/devfsd.conf /etc/devfsd.conf

) > $C_FIFO 2>&1
