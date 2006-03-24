(

  MESA_PREFIX="/usr"

  find . -type f -exec sed -i 's@/usr/X11R6@/usr/X11@g' {} \; &&
  sed -i 's@lib/modules@lib/X11/modules@' src/glx/x11/dri_glx.c	&&
   
  unpack $SOURCE2 &&

  make linux-dri DRM_SOURCE_PATH="${SOURCE_DIRECTORY}/drm" &&

  prepare_install &&

  bin/installmesa ${MESA_PREFIX}			&&
  mkdir -v -p /usr/lib/X11/modules/dri			&&
  install -v -m755 lib/*dri* /usr/lib/X11/modules/dri	&&

  install -m644 include/GLView.h \
  	  $MESA_PREFIX/include &&

  cd progs/xdemos &&
  make PROGS='glxinfo glxgears' &&
  install -v -m755 glxinfo glxgears /usr/bin

) > $C_FIFO 2>&1
