(

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit "s/SUBDIRS = atk tests docs po/SUBDIRS = atk tests po/g" Makefile.in
  fi  &&

  default_build

) > $C_FIFO 2>&1
