(

  cd $SOURCE_DIRECTORY/build/lib        &&
  make -f gcc.mak clean release-shared  &&

  prepare_install                       &&
  make -f gcc.mak install BASE_INSTALL_DIR=/usr

) > $C_FIFO 2>&1
