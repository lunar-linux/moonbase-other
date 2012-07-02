(
  # Fix ::ini::file bug that wipe the ini file on write
  patch_it $SOURCE2 1 &&

  ./configure  --prefix=/usr            \
               --mandir=/usr/share/man  &&

  prepare_install                       &&

  make install

) > $C_FIFO 2>&1
