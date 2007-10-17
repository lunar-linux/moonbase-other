(

  unset CPP

  if in_depends libmcs kdelibs3; then
    . /etc/profile.d/qt3.rc
    . /etc/profile.d/kde3.rc

    sedit "s:-I/usr/kde/3.5/include:-I$KDEDIR/include:" configure.ac &&
    sedit "s:-I/usr/qt/3/include:-I$QTDIR/include:"     configure.ac &&
    sedit "s:-L/usr/kde/3.5/lib:-L$KDEDIR/lib:"         configure.ac &&
    sedit "s:-L/usr/qt/3/lib:-L$QTDIR/lib:"             configure.ac &&

    autoconf
  fi &&

  default_build

) > $C_FIFO 2>&1
