(

  OPTS="$OPTS --disable-gtk-test --enable-xpdf-headers"

  if module_installed qt4; then
    OPTS="$OPTS --enable-poppler-qt4"
  fi  &&

  default_build

) > $C_FIFO 2>&1
