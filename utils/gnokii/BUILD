(

  OPTS="$OPTS --enable-security --disable-debug --disable-xdebug"
  if echo $OPTS | grep -q 'with-x' ; then
    sedit "s:LDLIBS += :LDLIBS += -lXpm :" xgnokii/Makefile
  fi  &&

  ./configure  --prefix=/usr  \
               $OPTS         &&

  make               &&
  make install-docs  &&
  make install-suid  &&
  prepare_install    &&
  make install       &&
  cp Docs/sample/gnokiirc /etc/gnokiirc
  
) > $C_FIFO 2>&1
