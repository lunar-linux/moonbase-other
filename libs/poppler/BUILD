(
  sedit "s:priv->quality, true: priv->quality, TRUE:" goo/JpegWriter.cc &&

  OPTS+=" --disable-static --disable-gtk-test --enable-xpdf-headers" &&

  if in_depends poppler qt4; then
    . /etc/profile.d/qt4.rc
  fi &&

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit "s/SUBDIRS = . reference demo/SUBDIRS = . demo/g" glib/Makefile.in
  fi  &&

  default_build

) > $C_FIFO 2>&1
