(
  
  sedit "s:\$(am__py_compile) --destdir \"\$(DESTDIR)\":\$(am__py_compile):" python/Makefile.in &&

  OPTS+=" --disable-debug --disable-doc" &&

  #java bindings are broken
  OPTS+=" --disable-java" &&

  bad_flags "-Wl,-O1,--as-needed" &&
  bad_flags "-Wl,--as-needed" &&

  default_build

) > $C_FIFO 2>&1
