(

  OPTS+=" --disable-static --disable-gtk-test --enable-xpdf-headers" &&

  if in_depends poppler qt4; then
    . /etc/profile.d/qt4.rc
  fi &&

  default_build

) > $C_FIFO 2>&1
