(

  cd $SOURCE_DIRECTORY   &&
  sedit "s/local\///" gtk-brcalc.c &&
  make                   &&
  prepare_install        &&
  make install INSTALLPATH=/usr

) > $C_FIFO 2>&1
