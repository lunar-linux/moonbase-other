(

  OPTS+=" --disable-static" &&

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit "s/src termcaps po doc perf/src termcaps po perf/g" Makefile.in
  fi

  default_build

) > $C_FIFO 2>&1
