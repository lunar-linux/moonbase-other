(

  if [[ "$ENABLE_FLOAT" == "y" ]]; then
    OPTS="$OPTS --enable-float"
  fi

  ./configure   --prefix=/usr       \
                --enable-shared     &&

  default_make

) > $C_FIFO 2>&1
