(

  OPTS="$OPTS --enable-shared=yes --enable-hdri"

  autoconf         &&
  default_config   &&

  make             &&
  prepare_install  &&
  make install-strip

) > $C_FIFO 2>&1
