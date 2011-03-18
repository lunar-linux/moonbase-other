(

  if [ "$CONFIG_NLS" == "n" ]; then
    OPTS+=" --disable-nls"
  fi &&

  ./build.sh --configure-only --prefix=/usr $OPTS &&

  default_build &&

  # Too many docs, and the permissions are wrong
  rm -rf doc &&
  rm -f README.{Debian,xmingw}

) > $C_FIFO 2>&1
