(
  
  cp $SCRIPT_DIRECTORY/config.sh .          &&
  for f in *.SH */*.SH ; do
    sh $f
  done                                      &&
  make                                      &&
  prepare_install                           &&
  make install

) > $C_FIFO 2>&1
