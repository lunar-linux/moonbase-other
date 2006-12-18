(

  . /etc/profile.d/qt3.rc

  python scons.py PREFIX="$QTDIR"  &&

  prepare_install  &&
  python scons.py install

) > $C_FIFO 2>&1
