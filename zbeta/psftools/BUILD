(

  OPTS+=" --disable-static" &&

  default_build &&

  # Docs
  mv doc/* . &&
  rmdir doc &&
  gather_docs *.txt TODO

) > $C_FIFO 2>&1
