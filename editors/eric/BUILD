(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  export PATH=${QT_PREFIX:-$QTDIR}/bin:${KDE_PREFIX:-$KDEDIR}/bin:$PATH
  export KDEDIR=${KDE_PREFIX:-$KDEDIR}
  prepare_install  &&
  sedit "s/usr\/local\/bin/usr\/bin\//" install.py  &&
  python install.py
	
) > $C_FIFO 2>&1
