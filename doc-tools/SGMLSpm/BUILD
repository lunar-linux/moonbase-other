(
  cd $SOURCE_DIRECTORY                      &&
  cp $SCRIPT_DIRECTORY/SGMLSpm.patch .      &&
  patch -p1 < SGMLSpm.patch                 &&
  
  prepare_install                           &&
  make all

) > $C_FIFO 2>&1
