(

  if  `module_installed smake`; then
    THISMAKE=smake
  else
    THISMAKE=make
  fi                                               &&
  $THISMAKE INS_BASE=/usr MANDIR=share/man         &&
  prepare_install                                  &&
  $THISMAKE INS_BASE=/usr MANDIR=share/man install

) > $C_FIFO 2>&1
