(
  cd $SOURCE_DIRECTORY                         &&
  prepare_install                              &&
  mkdir -p /usr/X11R6/lib/modules/extensions   &&
  mkdir -p /usr/X11R6/lib/modules/drivers      &&
  make    install                              &&
  cp    -d  /usr/lib/libGL*   /usr/X11R6/lib   &&
  cp    -a  usr/include/GL/*  /usr/include/GL  &&
  rm -fR $SOURCE_DIRECTORY/*                   &&
  rm $SOURCE_DIRECTORY/.manifest               &&
  cd $BUILD_DIRECTORY                          &&
  rmdir $SOURCE_DIRECTORY                      &&

[ -e "/etc/ld.so.preload" ] && sedit "/libgcc_s/d" /etc/ld.so.preload || true

) > $C_FIFO 2>&1


