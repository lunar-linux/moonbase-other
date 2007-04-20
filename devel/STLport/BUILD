(

  cd $SOURCE_DIRECTORY/build/lib    &&
  make -f gcc.mak clean all         &&
  prepare_install                   &&
  make -f gcc.mak install INSTALLDIR=/usr

) > $C_FIFO 2>&1
