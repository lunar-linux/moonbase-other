(

  if ! module_installed xserver ; then
    OPTS=$OPTS" --enable-client=no"
  else
    if module_installed gtk+-2 ; then
      OPTS=$OPTS" --enable-client=gtk2"
    fi
  fi


  ./configure  --prefix=/usr        \
               --bindir=/usr/games  \
	       $OPTS                &&
	       
  default_make

) > $C_FIFO 2>&1
