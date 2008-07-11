(

  OPTS="--enable-R-shlib $OPTS"

  default_config &&

  make &&
  make check &&
  prepare_install &&

# It fumbles at this point because doc was created as file not dir
  rm -rf /usr/lib/R &&
  mkdir -p /usr/lib/R/doc /usr/lib/R/doc/html/search /usr/lib/R/doc/manual &&

  make install

) > $C_FIFO 2>&1
