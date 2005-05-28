(

  xmkmf -a                  &&
  make CCOPTIONS="$CFALGS"  &&
  prepare_install           &&
  make    install           &&
  make    install.man

) > $C_FIFO 2>&1
