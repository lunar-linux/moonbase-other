(

  patch_it $SOURCE2 1 &&
  sed -i -e "s:-O2:$CFLAGS:;s: -g::" configure &&
  OPTS+=" --disable-gsm  --enable-video --disable-static" &&

  default_build

) > $C_FIFO 2>&1
