(
  if [ -n "$MAKES" ] && [ "$MAKES" -gt 1 ] ; then
    export JOBS=$MAKES
  fi &&

  ./configure --prefix=/usr               \
              $OPTS                      &&

  default_make

) > $C_FIFO 2>&1
