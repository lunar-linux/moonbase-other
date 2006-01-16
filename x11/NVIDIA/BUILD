(
  cd $SOURCE_DIRECTORY                         &&
  prepare_install                              &&
  mkdir -p /usr/X11R6/lib/modules/extensions   &&
  mkdir -p /usr/X11R6/lib/modules/drivers      &&
  sedit 's/package-install: module-install rmmod-sanity-check/package-install: module-install/' usr/src/nv/Makefile.kbuild  &&
  make install                                 &&
  cp -d /usr/lib/libGL*  /usr/X11R6/lib        &&
  cp -a usr/include/GL/* /usr/include/GL       &&
  cp -a usr/bin/nvidia-settings /usr/bin/nvidia-settings  &&
  rm -f /usr/X11R6/lib/libMesaGL.so  &&
  rm -fR $SOURCE_DIRECTORY/*         &&
  rm $SOURCE_DIRECTORY/.manifest     &&
  cd $BUILD_DIRECTORY                &&
  rmdir $SOURCE_DIRECTORY            &&

  if [ -e "/etc/ld.so.preload" ]; then
    sedit "/libgcc_s/d" /etc/ld.so.preload || true
  fi

) > $C_FIFO 2>&1
