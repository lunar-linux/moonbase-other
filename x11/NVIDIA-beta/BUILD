(

  # We make the kernel modules on our own
  cd $SOURCE_DIRECTORY/usr/src/nv &&

  sedit "s:KBUILD_VERBOSE=1:KBUILD_VERBOSE=0:g" Makefile.kbuild &&

  make SYSSRC=/usr/src/linux module &&

  prepare_install &&

  make SYSSRC=/usr/src/linux install &&

  cd $SOURCE_DIRECTORY &&
  rm -rf old.libraries &&

  # This is installer less build script. If you find bugs let me know: zbiggy@o2.pl
  sedit "s/__GENERATED_BY__/nvidia-installer\:\ 1.0.7/" usr/lib/libGL.la &&
  sedit "s/__LIBGL_PATH__/\/usr\/\/lib\/opengl\/nvidia/" usr/lib/libGL.la &&
  sedit "s/__UTILS_PATH__/\/usr\/bin/" usr/share/applications/nvidia-settings.desktop &&
  sedit "s/__PIXMAP_PATH__/\/usr\/share\/doc\/NVIDIA_GLX-1.0/" usr/share/applications/nvidia-settings.desktop &&

  mkdir -p /usr/lib/opengl/nvidia &&

  cd $SOURCE_DIRECTORY &&
  cp -f nvidia-installer /usr/bin &&
  mkdir -p /usr/share/doc/NVIDIA_GLX-1.0 &&
  cp -f LICENSE /usr/share/doc/NVIDIA_GLX-1.0 &&
  cp -f usr/X11R6/lib/lib* /usr/lib/opengl/nvidia/ &&
  cp -f usr/X11R6/lib/modules/lib* /usr/X11/lib/xorg/modules &&
  cp -f usr/share/applications/nvidia-settings.desktop /usr/share/applications/nvidia-settings.desktop
  cd /usr/X11/lib/xorg/modules &&
  ln -sf libnvidia-wfb.so.$VERSION libnvidia-wfb.so.1 &&

  cd $SOURCE_DIRECTORY &&
  cp -rf usr/X11R6/lib/modules/drivers /usr/X11/lib/xorg/modules &&
  cp -rf usr/X11R6/lib/modules/extensions /usr/X11/lib/xorg/modules &&
  cd /usr/X11/lib/xorg/modules/extensions &&
  ln -sf libglx.so.$VERSION libglx.so &&

  cd $SOURCE_DIRECTORY &&
  cp -f usr/bin/nvidia* /usr/bin &&
  cp -rf usr/include/cuda /usr/X11/include &&
  cp -rf usr/lib/tls /usr/lib/opengl/nvidia/ &&
  cd /usr/lib/opengl/nvidia/tls &&
  ln -sf libnvidia-tls.so.$VERSION libnvidia-tls.so.1 &&

  cd $SOURCE_DIRECTORY &&
  cp -f usr/lib/lib* /usr/lib/opengl/nvidia/ &&
  cd /usr/lib/opengl/nvidia &&
  ln -sf libGL.so.$VERSION libGL.so.1 &&
  ln -sf libGL.so.1 libGL.so &&
  ln -sf libGLcore.so.$VERSION libGLcore.so.1 &&
  ln -sf libXvMCNVIDIA.so.$VERSION libXvMCNVIDIA_dynamic.so.1 &&
  ln -sf libnvidia-cfg.so.$VERSION libnvidia-cfg.so.1 &&
  ln -sf libnvidia-cfg.so.1 libnvidia-cfg.so &&
  ln -sf libnvidia-tls.so.$VERSION libnvidia-tls.so.1 &&

  cd $SOURCE_DIRECTORY &&
  cp -rf usr/share/doc/html /usr/share/doc/NVIDIA_GLX-1.0 &&
  cp -rf usr/include/GL /usr/share/doc/NVIDIA_GLX-1.0 &&
  cp -f usr/share/doc/NV* /usr/share/doc/NVIDIA_GLX-1.0 &&
  cp -f usr/share/doc/R* /usr/share/doc/NVIDIA_GLX-1.0 &&
  cp -f usr/share/doc/X* /usr/share/doc/NVIDIA_GLX-1.0 &&
  cp -f usr/share/doc/nv* /usr/share/doc/NVIDIA_GLX-1.0 &&
  cp -rf usr/share/man /usr/share &&
  cp  -f usr/share/pixmaps/* /usr/share/doc/NVIDIA_GLX-1.0 &&

  # Register Nvidia XvMC library for use in any XvMC enabled media player
  rm -f /etc/X11/XvMCConfig &&
  touch /etc/X11/XvMCConfig &&
  echo libXvMCNVIDIA_dynamic.so.1 > /etc/X11/XvMCConfig &&
  chmod 644 /etc/X11/XvMCConfig

  # Get a sane default if haven't set it yet
  if [ "x$LUNAR_GL" == "x" ] ; then
    set_local_config LUNAR_GL binary
  fi

  # This is a temp workaround for braindead dlopen calls inside the NVIDIA
  # libglx.so

  ln -sf /usr/lib/opengl/nvidia/libGLcore.so.1 \
         /usr/lib/libGLcore.so.1 &&
         
  ln -sf /usr/lib/opengl/nvidia/tls/libnvidia-tls.so.1 \
         /usr/lib/libnvidia-tls.so.1

) > $C_FIFO 2>&1
