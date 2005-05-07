(

  make readpst                                                    &&
  prepare_install                                                 &&
  set -x                                                          &&
  install -m755 -g0 -o0 readpst /usr/bin/readpst                  &&
  mkdir -p /usr/share/doc/readpst                                 &&
  for FILE in AUTHORS COPYING CREDITS FILE* README TODO ; do
    install -m644 -g0 -o0 $FILE /usr/share/doc/readpst
  done                                                            &&
  set +x

) > $C_FIFO 2>&1
