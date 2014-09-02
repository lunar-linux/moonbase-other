(

  # Unwanted doc
  rm -f README.win32  &&

# Fixes some modules dependent on panga since the glib-2 bump has dropped the use
# G_CONST_RETURN in favor of 'const'
  find . -name "*.c" -print | xargs sed -i "s:G_CONST_RETURN:const:g" &&
  find . -name "*.h" -print | xargs sed -i "s:G_CONST_RETURN:const:g" &&

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit 's/SUBDIRS = pango modules pango-view examples docs tools tests/SUBDIRS = pango modules pango-view examples tools tests/g' Makefile.in
  fi  &&

  default_build

) > $C_FIFO 2>&1
