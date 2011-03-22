(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  OPTS+=" --disable-static"  &&

  if in_depends $MODULE libX11 ; then
    # tee is required by firefox 4 when compiled with system cairo, and doesn't otherwise make any difference
    OPTS+=" --enable-tee"
  fi  &&

  default_build

) > $C_FIFO 2>&1
