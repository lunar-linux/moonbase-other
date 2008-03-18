(

  bad_flags -Werror &&
  OPTS="$OPTS --enable-conduits --with-libpng=/usr --enable-threads" &&
  default_build &&
  gather_docs doc/*

) > $C_FIFO 2>&1
