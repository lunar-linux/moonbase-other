(

  # Do not remove --enable-debug=minimum, it will break some common
  # API functions if debug is entirely disabled
  export OPTS+=" --disable-static --enable-shared --enable-debug=minimum"  &&
  default_build

) > $C_FIFO 2>&1
