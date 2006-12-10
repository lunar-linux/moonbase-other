(

  MESA_PREFIX="/usr"

  find . -type f -exec sed -i 's@/usr/X11R6@/usr/X11@g' {} \;    &&
  sed -i 's@lib/modules@lib/X11/modules@' src/glx/x11/dri_glx.c	 &&
  sedit  "s:   blit.idx:// blit.idx:"     src/mesa/drivers/dri/mach64/mach64_ioctl.c  &&
   
  make linux-dri DRM_SOURCE_PATH="${SOURCE_DIRECTORY}/drm" &&

  prepare_install &&

  cp -a lib/libGLU.so* ${MESA_PREFIX}/lib/ &&
  cp -a include/GL/glu*.h ${MESA_PREFIX}/include/GL/ &&

  install -m644 include/GLView.h \
  	  $MESA_PREFIX/include &&

  cd progs/xdemos &&
  make PROGS='glxinfo glxgears' &&
  install -v -m755 glxinfo glxgears /usr/bin

) > $C_FIFO 2>&1
