(

  cd $SOURCE_DIRECTORY   &&
  sed "s/local\///" gtk-brcalc.c > test.c &&
  mv test.c gtk-brcalc.c &&
  make                   &&
  prepare_install        &&
  make install INSTALLPATH=/usr
) > $C_FIFO 2>&1
