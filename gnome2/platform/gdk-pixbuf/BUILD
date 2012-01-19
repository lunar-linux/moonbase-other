(

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit "s/SUBDIRS = gdk-pixbuf po docs/SUBDIRS = gdk-pixbuf po/g" Makefile.in
  fi  &&

  # Needed by Adobe acrobat reader
  OPTS="$OPTS --with-x11"

  default_build

) > $C_FIFO 2>&1
