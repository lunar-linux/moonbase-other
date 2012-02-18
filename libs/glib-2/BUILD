(

  # Do not remove --enable-debug=minimum, it will break some common
  # API functions if debug is entirely disabled
  export OPTS+=" --disable-static --enable-shared --enable-debug=minimum"  &&

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit "s/SUBDIRS = . m4macros glib gmodule gthread gobject gio tests po docs/SUBDIRS = . m4macros glib gmodule gthread gobject gio tests po/g" Makefile.in
  fi  &&

  default_build  &&

# fix the inkscape compiling
  sedit "s:#error://#error:" /usr/include/glib-2.0/glib/gtree.h

) > $C_FIFO 2>&1
