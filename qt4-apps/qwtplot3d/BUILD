(
  
  . /etc/profile.d/qt4.rc &&

# This will need to go on the next version bump.
  sed -i "1i #include <cstdio>" src/qwt3d_function.cpp &&

  qmake &&
  make  &&
  prepare_install &&

# No make install, so here we go.
  for i in lib/* ; do 
  [ -d $QTDIR/lib/$MODULE ] || mkdir -p $QTDIR/lib/$MODULE
  install -m 644 $i $QTDIR/lib/$MODULE/
  done &&
# Just for completeness, lets to also do the headers.
  for i in include/* ; do 
  [ -d $QTDIR/include/$MODULE ] || mkdir -p $QTDIR/include/$MODULE
  install -m 644 $i $QTDIR/include/$MODULE/
  done

) > $C_FIFO 2>&1

