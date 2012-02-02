(
  
  . /etc/profile.d/qt4.rc &&

  qmake &&
  make  &&
  prepare_install &&

# No make install, so here we go.
  if  [ ! -d /usr/lib/$MODULE ] ; then
    mkdir -p /usr/lib/$MODULE 
  fi &&

  install -m 644 lib/release/unix/libqwtplot3d.so.0.3.0 /usr/lib/$MODULE/ &&
  ln -sf /usr/lib/$MODULE/libqwtplot3d.so.0.3.0 /usr/lib/$MODULE/libqwtplot3d.so      &&
  ln -sf /usr/lib/$MODULE/libqwtplot3d.so.0.3.0 /usr/lib/$MODULE/libqwtplot3d.so.0    &&
  ln -sf /usr/lib/$MODULE/libqwtplot3d.so.0.3.0 /usr/lib/$MODULE/libqwtplot3d.so.0.3  &&
 
# Just for completeness, lets to also do the headers.
  for i in include/* ; do 
  [ -d /usr/include/$MODULE ] || mkdir -p /usr/include/$MODULE
  install -m 644 $i /usr/include/$MODULE/
  done

) > $C_FIFO 2>&1

