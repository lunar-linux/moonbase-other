(

  cd $SOURCE_DIRECTORY/src          &&
  make -f gcc-linux.mak clean all   &&
  prepare_install                   &&
  make -f gcc-linux.mak install INSTALLDIR=/usr

) > $C_FIFO 2>&1
