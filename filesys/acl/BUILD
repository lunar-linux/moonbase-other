(

  OPTS+=" --disable-static"  &&

  export DEBUG=-DNDEBUG  &&

  default_build     &&
  make install-dev  &&
  make install-lib  &&
  rm -f /usr/lib/libacl.a

) > $C_FIFO 2>&1
