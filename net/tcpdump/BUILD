(

  if [[ "$IPV6" == "y" ]]; then
    OPTS="$OPTS --enable-ipv6"
  fi

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  default_build

) > $C_FIFO 2>&1
