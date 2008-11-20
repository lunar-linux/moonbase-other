(

  . /etc/profile.d/qt3.rc

  default_make &&
  install -m 755 esvn ${QT_PREFIX:-$QTDIR}/bin &&
  install -m 755 esvn-diff-wrapper ${QT_PREFIX:-$QTDIR}/bin &&
  install -m 644 eSvn.desktop /usr/share/applications &&
  install -m 644 esvn.png /usr/share/pixmaps

) > $C_FIFO 2>&1
