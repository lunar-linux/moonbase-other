(

  OPTS+=" --disable-static" &&

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit "s/SUBDIRS = liboil testsuite examples doc/SUBDIRS = liboil testsuite examples/g" Makefile.in
  fi  &&

  default_build

) > $C_FIFO 2>&1
