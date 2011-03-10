(

  prepare_install  &&

  mkdir -p /usr/share/wine/gecko  &&

  # The cab is not meant to be uncompressed
  install -m644 $SOURCE_CACHE/$SOURCE /usr/share/wine/gecko/

) > $C_FIFO 2>&1
