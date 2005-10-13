(

  if [ "$USE_GRAPHICS" == "y" ] ; then
    OPTS="$OPTS --enable-graphics"
  fi
  if [ "$USE_JSCRIPT" == "y" ] ; then
    OPTS="$OPTS --enable-javascript"
  fi

  # temp patch for a bug in links2
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  default_build
  
) > $C_FIFO 2>&1
