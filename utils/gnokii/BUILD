(

  if [ 'grep gnokii /etc/group' != 'gnokii' ]
     then
     groupadd gnokii
  fi

  OPTS="$OPTS --enable-security --disable-debug --disable-xdebug"
  if echo $OPTS | grep -q 'with-x' ; then
    sedit "s:LDLIBS += :LDLIBS += -lXpm :" xgnokii/Makefile.am
  fi  &&

  ./configure  --prefix=/usr  \
               $OPTS         &&

  default_make  &&
  cp Docs/sample/gnokiirc /etc/gnokiirc
  
) > $C_FIFO 2>&1
