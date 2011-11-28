(

  bad_flags -fomit-frame-pointer &&

  OPTS+=" --enable-frame-address --enable-pthread --enable-shared" &&

  patch_it $SOURCE2 0 &&
 
  default_build  &&

  make install-doc

) > $C_FIFO 2>&1
