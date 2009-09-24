(

  # Compile with glibc 2.10.1
  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  make  &&
  prepare_install  &&
  make install PREFIX=/usr

) > $C_FIFO 2>&1
