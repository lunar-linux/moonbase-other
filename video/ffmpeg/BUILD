(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  patch_it $SOURCE_CACHE/$SOURCE3 1  &&

  OPTS="$OPTS  --enable-gpl  --enable-shared"

  default_build  &&
  make installlib

) > $C_FIFO 2>&1
