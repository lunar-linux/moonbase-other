(

  OPTS="$OPTS --with-ssl --with-neon=`neon-config --prefix`"
  default_build &&
  if in_depends $MODULE swig ; then
    make swig-py install-swig-py
  fi

) > $C_FIFO 2>&1
