(

  prepare_install                                                        &&
  mkdir -p /usr/bin                                                      &&
  mkdir -p /usr/share/man/man1                                           &&
  mkdir -p /usr/share/doc/calamares                                      &&
  install -m 0755 calamaris /usr/bin                                     &&
  install calamaris /usr/share/man/man1                                  &&
  install COPYRIGHT EXAMPLES /usr/share/doc/calamares

) > $C_FIFO 2>&1
