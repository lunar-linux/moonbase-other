(

  patch_it $SOURCE2 1 &&

  if [[ `lvu installed gtk+-2 | cut -c 1-2` -ge 24 ]] ; then
    # To compile with gtk+-2 24.1
    sedit "s:-DGTK_DISABLE_DEPRECATED::" configure
  fi &&

  OPTS+=" --disable-nm" &&

  default_build

) > $C_FIFO 2>&1
