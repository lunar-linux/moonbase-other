(

  # We make the kernel modules on our own
  cd $SOURCE_DIRECTORY/usr/src/nv &&

  sedit "s:KBUILD_VERBOSE=1:KBUILD_VERBOSE=0:g" Makefile.kbuild &&

  make SYSSRC=/usr/src/linux module &&

  prepare_install &&

  make SYSSRC=/usr/src/linux install &&

  # And let nvidia-installer handle the rest
  cd $SOURCE_DIRECTORY &&
  rm -rf old.libraries &&

  mkdir -p /usr/lib/opengl/nvidia &&

  # We need to fool the installer a little as it checks for the
  # libraries after the installation
  export LD_LIBRARY_PATH="/usr/lib/opengl/nvidia" &&

  ./nvidia-installer --silent \
                     --no-precompiled-interface \
                     --no-rpms \
                     --no-network \
                     --no-recursion \
                     --no-kernel-module \
                     --no-x-check \
                     --no-opengl-headers \
                     --opengl-libdir=lib/opengl/nvidia &&

  # Register Nvidia XvMC library for use in any XvMC enabled media player
  rm -f /etc/X11/XvMCConfig &&
  touch /etc/X11/XvMCConfig &&
  echo libXvMCNVIDIA_dynamic.so.1 > /etc/X11/XvMCConfig &&
  chmod 644 /etc/X11/XvMCConfig &&

  # Get a sane default if haven't set it yet
  if [ "x$LUNAR_GL" == "x" ] ; then
    set_local_config LUNAR_GL binary
  fi

  # This is a temp workaround for braindead dlopen calls inside the NVIDIA
  # libglx.so

  ln -sf /usr/lib/opengl/nvidia/libGLcore.so.1 \
         /usr/lib/libGLcore.so.1 &&

  ln -sf /usr/lib/opengl/nvidia/tls/libnvidia-tls.so.1 \
         /usr/lib/libnvidia-tls.so.1 &&

  if !( module_installed gtk+-2 ); then
    rm -f /usr/bin/nvidia-settings
  fi

) > $C_FIFO 2>&1
