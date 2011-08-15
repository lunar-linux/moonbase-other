(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  default_build

  if [ ! -h /usr/lib/liblrdf.so.0 ]; then
     ln -s /usr/lib/liblrdf.so.2.0.0 /usr/lib/liblrdf.so.0
  fi

) > $C_FIFO 2>&1
