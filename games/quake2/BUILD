(

  if [ "$WERR" == "n" ]; then
    OPTS="$OPTS --disable-warn"
  fi

  ./configure  --prefix=/usr               \
               --bindir=/usr/games         \
               --datadir=/usr/share/games  \
               $OPTS                       &&

  default_make

) > $C_FIFO 2>&1
