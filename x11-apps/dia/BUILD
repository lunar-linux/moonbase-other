(

  export LIBART_CONFIG=/usr/bin/libart2-config &&

  OPTS+=" --with-python --enable-debug=no --disable-db2html" &&

  if in_depends $MODULE swig; then
    SWIG_VER="`lvu version swig`" &&
    sedit "s:1.3.31:$SWIG_VER:g" configure
  fi &&

  default_build

) > $C_FIFO 2>&1
