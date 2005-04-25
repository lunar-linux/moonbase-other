(

  OPTS="$OPTS --enable-security --disable-debug --disable-xdebug"
  if echo $OPTS | grep -q 'with-x' ; then
    sedit "s:LDLIBS += :LDLIBS += -lXpm :" xgnokii/Makefile
  fi
  default_build

) > $C_FIFO 2>&1
