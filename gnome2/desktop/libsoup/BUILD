(

  OPTS+=" --disable-static --disable-tls-check" &&

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit "s/SUBDIRS = libsoup tests docs/SUBDIRS = libsoup tests/g" Makefile.in
  fi  &&

  default_build

) > $C_FIFO 2>&1
