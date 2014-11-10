
  sedit "s:priv->quality, true: priv->quality, TRUE:" goo/JpegWriter.cc &&

  OPTS+=" --disable-static --disable-gtk-test --enable-xpdf-headers --enable-poppler-glib" &&

  if in_depends poppler qt5; then
    OPTS+=" --disable-poppler-qt5"
  fi &&

  if in_depends poppler qt4; then
    . /etc/profile.d/qt4.rc
  fi &&

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit "s/SUBDIRS = . reference demo/SUBDIRS = . demo/g" glib/Makefile.in
  fi  &&

  default_build &&

# If in depends we will now build qt5 libs
  if in_depends poppler qt5; then
    . /etc/profile.d/qt5.rc &&
    OPTS+=" --enable-poppler-qt5" &&
    default_build
  fi
