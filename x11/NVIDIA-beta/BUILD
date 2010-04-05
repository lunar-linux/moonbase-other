(

  cd $SOURCE_DIRECTORY &&
  rm -f nvidia-installer &&
  rm -f usr/bin/mkprecompiled &&
  rm -f usr/bin/tls_test &&
  rm -f usr/bin/tls_test_dso.so &&
  rm -f usr/share/man/man1/nvidia-installer.1.gz &&
  rm -f usr/bin/nvidia-settings &&
  rm -f usr/share/man/man1/nvidia-settings.1.gz &&
  rm -f usr/bin/nvidia-xconfig &&
  rm -f usr/share/man/man1/nvidia-xconfig.1.gz &&
  rm -f usr/bin/nvidia-settings/nvidia-settings &&
  if module_installed XOrg7 ; then
  rm -f usr/X11R6/lib/modules/libnvidia-wfb.so*
  fi &&
  rm -f usr/lib/libvdpau.so* &&
  rm -f usr/lib/libvdpau_trace.so* &&
  rm -rf usr/include/vdpau &&
  cd $SOURCE_DIRECTORY/nvidia-installer-$VERSION &&
  rm -f libpci.a &&
  rm -f *Linux* &&
  sedit 's/Bstatic/Bdynamic/' Makefile &&
  sedit 's/Bstatic/Bdynamic/' public.mk &&

  if [[ $(arch) == x86_64 ]] ; then
    # Don't compile 32-bits on pure 64-bit Lunar
    sedit 's/COMPAT_32_SRC *= */\0#/' Makefile &&
    sedit 's/COMPAT_32_SRC *= */\0#/' public.mk &&
    sedit 's/-DNV_X86_64//' Makefile &&
    sedit 's/-DNV_X86_64//' public.mk
  fi &&

  make clean &&
  make rebuild_tls_test &&
  make rebuild_tls_test_dso &&
  make rebuild_rtld_test &&
  make &&
  make install ROOT=$SOURCE_DIRECTORY &&
  ARK=`uname -m | sed 's/i[3456]86/x86/'` &&
  cp tls_test_`uname`-$ARK -f $SOURCE_DIRECTORY/usr/bin/tls_test &&
  cp tls_test_dso_`uname`-$ARK.so -f $SOURCE_DIRECTORY/usr/bin/tls_test_dso.so &&
  cd .. &&
  cd $SOURCE_DIRECTORY/nvidia-settings-$VERSION &&
  sedit 's/-O -DNDEBUG/-DNDEBUG/' Makefile &&
  sedit '/CFLAGS = -Wall -g/d' src/XF86Config-parser/Makefile &&

  # xf86vmode.h has been removed in xf86vidmodeproto 2.3
  if [[ ! -e /usr/include/X11/extensions/xf86vmode.h ]] ; then
    sedit "s:#include <X11/extensions/xf86vmode.h>:#include <X11/extensions/xf86vmproto.h>:" src/libXNVCtrlAttributes/NvCtrlAttributes{,VidMode,Glx}.c
  fi &&

  make clean &&
  make &&
  make install ROOT=$SOURCE_DIRECTORY &&
  cd .. &&
  cd $SOURCE_DIRECTORY/nvidia-xconfig-$VERSION &&
  sedit '/CFLAGS += -O/d' Makefile &&
  sedit '/CFLAGS = -Wall -g/d' XF86Config-parser/Makefile &&
  make clean &&
  make &&
  make install ROOT=$SOURCE_DIRECTORY &&

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
  mkdir -p /usr/share/doc/NVIDIA_GLX-1.0/include &&
  cp -f LICENSE /usr/share/doc/NVIDIA_GLX-1.0/include &&
  cp -f usr/X11R6/lib/lib* /usr/lib &&
  cp -rf usr/X11R6/lib/modules /usr/X11/lib/xorg &&

  cd /usr/X11/lib/xorg/modules &&
  cd /usr/X11/lib/xorg/modules/extensions &&
  ln -sf libglx.so.$VERSION libglx.so &&

  cd $SOURCE_DIRECTORY &&
  cp -f usr/bin/nvidia* /usr/bin &&
  cp -rf usr/include/cuda /usr/X11/include &&
  cp -rf usr/include/GL /usr/share/doc/NVIDIA_GLX-1.0/include &&
  cp -rf usr/lib/tls /usr/lib &&
  cd /usr/lib/tls &&
  ln -sf libnvidia-tls.so.$VERSION libnvidia-tls.so.1 &&

  cd $SOURCE_DIRECTORY &&
  cp -f usr/lib/libGL* /usr/lib/opengl/nvidia/ &&
  cd /usr/lib/opengl/nvidia &&
  ln -sf libGL.so.$VERSION libGL.so.1 &&
  ln -sf libGL.so.1 libGL.so &&
  ln -sf libGLcore.so.$VERSION libGLcore.so.1 &&
  cd /usr/lib &&
  ln -sf libXvMCNVIDIA.so.$VERSION libXvMCNVIDIA_dynamic.so.1 &&
  ln -sf libnvidia-cfg.so.$VERSION libnvidia-cfg.so.1 &&
  ln -sf libnvidia-cfg.so.1 libnvidia-cfg.so &&
  ln -sf libnvidia-tls.so.$VERSION libnvidia-tls.so.1 &&

  cd $SOURCE_DIRECTORY &&
  cp  -f usr/lib/lib*a*.* /usr/lib &&
  cp -rf usr/share/applications /usr/share &&
  cp -rf usr/share/doc/* /usr/share/doc/NVIDIA_GLX-1.0 &&
  cp -rf usr/share/man /usr/share &&
  cp  -f usr/share/pixmaps/* /usr/share/doc/NVIDIA_GLX-1.0 &&

  # Register Nvidia XvMC library for use in any XvMC enabled media player
  rm -f /etc/X11/XvMCConfig &&
  touch /etc/X11/XvMCConfig &&
  echo libXvMCNVIDIA_dynamic.so.1 > /etc/X11/XvMCConfig &&
  chmod 644 /etc/X11/XvMCConfig &&

  # Get a sane default if haven't set it yet
  if [ "x$LUNAR_GL" == "x" ] ; then
    set_local_config LUNAR_GL binary
  fi &&

  # This is a temp workaround for braindead dlopen calls inside the NVIDIA
  # libglx.so

  ln -sf /usr/lib/opengl/nvidia/libGLcore.so.1 \
         /usr/lib/libGLcore.so.1 &&

  ln -sf /usr/lib/tls/libnvidia-tls.so.1 \
         /usr/lib/libnvidia-tls.so.1

  if !( module_installed gtk+-2 ); then
    rm -f /usr/bin/nvidia-settings
  fi

) > $C_FIFO 2>&1
