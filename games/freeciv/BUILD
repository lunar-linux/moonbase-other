(

  if ! module_installed xfree86 ; then
    OPTS=$OPTS" --enable-client=no"
  fi

  ./configure  --prefix=/usr        \
               --bindir=/usr/games  \
	       $OPTS                &&
  make                              &&
  prepare_install                   &&
  make    install

) > $C_FIFO 2>&1
