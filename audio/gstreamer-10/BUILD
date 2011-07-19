(

  OPTS+=" --disable-static --disable-debug --disable-examples --disable-tests --disable-valgrind"  &&

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit "/\tdocs \\\/d" Makefile.in
  fi  &&

  default_build

) > $C_FIFO 2>&1
