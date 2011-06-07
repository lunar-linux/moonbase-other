(

  # Unwanted doc
  rm -f README.win32  &&

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit 's/SUBDIRS = pango modules pango-view examples docs tools tests/SUBDIRS = pango modules pango-view examples tools tests/g' Makefile.in
  fi  &&

  default_build

) > $C_FIFO 2>&1
