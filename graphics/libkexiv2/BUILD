(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  default_build  &&

  ln -f ${KDE_PREFIX:-/opt/lunar/kde/3}/lib/libkexiv2.so ${KDE_PREFIX:-/opt/lunar/kde/3}/lib/libkexiv2.so.0

) > $C_FIFO 2>&1
