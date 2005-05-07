(
  DEPCOMP=/usr/share/automake-*/depcomp           &&

  if ! [ -e $DEPCOMP ]; then
       lin automake
  fi                                              &&
  
  cp $DEPCOMP $SOURCE_DIRECTORY                   && 
  default_config                                  &&
  default_make                         

) > $C_FIFO 2>&1
