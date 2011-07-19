(

  OPTS+=" --disable-static --disable-tests "  &&

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit 's/SUBDIRS = . docs tests/SUBDIRS = . tests/g' Makefile.in
  fi  &&

  default_build

) > $C_FIFO 2>&1
