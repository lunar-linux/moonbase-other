(

  if [[ "$COLOR" == "y" ]] ; then
    OPTS="$OPTS --enable-color"
  fi
  if [[ "$NANORC" == "y" ]] ; then
    OPTS="$OPTS --enable-nanorc"
  fi
  if [[ "$MULTI" == "y" ]] ; then
    OPTS="$OPTS --enable-multibuffer"
  fi
  
  default_build  &&

  if [[ "$NANORC" == "y" && ! -f "/etc/nanorc" ]]; then
    bzcat $SOURCE_CACHE/$SOURCE2 > nanorc
    install -m 0644 nanorc /etc/
  fi

) > $C_FIFO 2>&1

