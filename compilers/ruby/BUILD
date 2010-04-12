(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  bad_flags -fomit-frame-pointer
  OPTS="$OPTS --enable-frame-address --enable-pthread --enable-shared"
  default_build  &&
  make install-doc

) > $C_FIFO 2>&1
