(

  . /etc/profile.d/qt3.rc

#This should be revisited on the next lprof bump.
  cd src/liblprof &&
  patch < $SOURCE_CACHE/$SOURCE2 &&
  cd ../../ &&

  python scons.py PREFIX="$QTDIR"  &&

  prepare_install  &&
  python scons.py install

) > $C_FIFO 2>&1
