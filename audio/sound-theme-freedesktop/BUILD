(

  # autogen fails if no INSTALL file is there..
  if [ ! -f INSTALL ]; then
    touch INSTALL
    chmod a+x INSTALL
  fi
  ./autogen.sh &&
  default_build
 
) > $C_FIFO 2>&1
