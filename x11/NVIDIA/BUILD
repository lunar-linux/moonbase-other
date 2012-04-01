(
  # This is an installer-less build script. If you find bugs let me know by e-mail: zbiggy(0)o2(period)pl

  GCCKNL=`cat /proc/version | cut -d\( -f3 | cut -d\  -f3`
  GCCNOW=`gcc --version | grep gcc | cut -d\  -f3`
  if [ $GCCKNL != $GCCNOW ]; then
    message "${PROBLEM_COLOR}The kernel is compiled using gcc version: $GCCKNL"
    message "but you try to compile nvidia kernel module with"
    message "gcc version: $GCCNOW. You can not use different"
    message "gcc to build kernel and modules. Please lin kernel"
    message "with current gcc, then reboot and lin nvidia driver.${DEFAULT_COLOR}"
    exit 1
  fi &&

  # Fix for broken MSI in driver

  # Remove files to avoid module conflicts and
  # make place for source compiled replacements
  rm -f .manifest libvdpau.so* libvdpau_trace.so* \
  pkg-history.txt nvidia-installer{,.*} \
  mkprecompiled nvidia-xconfig{,.*} nvidia-settings{,.*} \
  libnvidia-wfb* tls_test* libGL.la gl*.h &&

  # Temporary paths and symlinks to make sources compilable
  LD_LIBRARY_PATH="$SOURCE_DIRECTORY:$LD_LIBRARY_PATH" &&
  CFLAGS=" -L$SOURCE_DIRECTORY $CFLAGS " &&
  export SYSSRC=/usr/src/linux &&
  ln -s libGL.so.$VERSION nvidia-installer-$AVERSION/libGL.so &&
  ln -s libnvidia-glcore.so.$VERSION nvidia-installer-$AVERSION/libGLcore.so.1 &&
  ln -s libnvidia-tls.so.$VERSION nvidia-installer-$AVERSION/libnvidia-tls.so.1 &&

  echo libXvMCNVIDIA_dynamic.so.1 > XvMCConfig &&

  # Builds nvidia-installer from source
  cd nvidia-installer-$AVERSION &&
  rm -f *Linux* &&

  if [[ $(arch) == x86_64 ]] ; then
    # Don't compile 32-bits on pure 64-bit Lunar
    sedit 's/COMPAT_32_SRC *= */\0#/' Makefile &&
    sedit 's/-DNV_X86_64//' Makefile
  fi &&

  make clean &&
  make rebuild_tls_test &&
  make rebuild_tls_test_dso &&
  make rebuild_rtld_test &&
  make &&
  if [[ $(arch) == x86_64 ]] ; then
    install -m 755 _out/Linux_x86_64/nvidia-installer .. &&
    install -m 755 _out/Linux_x86_64/mkprecompiled .. &&
    install -m 644 _out/Linux_x86_64/nvidia-installer.1.gz .. &&
    cp tls_test_`uname`-x86_64 ../tls_test &&
    cp tls_test_dso_`uname`-x86_64.so ../tls_test_dso.so
  else
    install -m 755 _out/Linux_x86/nvidia-installer .. &&
    install -m 755 _out/Linux_x86/mkprecompiled .. &&
    install -m 644 _out/Linux_x86/nvidia-installer.1.gz .. &&
    cp tls_test_`uname`-x86 ../tls_test &&
    cp tls_test_dso_`uname`-x86.so ../tls_test_dso.so
  fi &&

  cd ..
  if in_depends $MODULE "gtk+-2" ; then
    # Builds nvidia-settings from source
    cd nvidia-settings-$AVERSION &&

    # xf86vmode.h has been removed in xf86vidmodeproto 2.3
    if [[ ! -e /usr/include/X11/extensions/xf86vmode.h ]] ; then
      sedit "s:#include <X11/extensions/xf86vmode.h>:#include <X11/extensions/xf86vmproto.h>:" src/libXNVCtrlAttributes/NvCtrlAttributes{,VidMode,Glx}.c
    fi &&

    make clean &&
    make -C src/libXNVCtrl &&
# X_CFLAGS=$CFLAGS GL_INCLUDE_PATH=$SOURCE_DIRECTORY
    make &&
    if [[ $(arch) == x86_64 ]] ; then
      install -m 755 _out/Linux_x86_64/nvidia-settings .. &&
      install -m 644 _out/Linux_x86_64/nvidia-settings.1.gz ..
    else
      install -m 755 _out/Linux_x86/nvidia-settings .. &&
      install -m 644 _out/Linux_x86/nvidia-settings.1.gz ..
    fi &&
    sedit 's/__UTILS_PATH__/\/usr\/bin/' doc/nvidia-settings.desktop &&
    sedit 's/__PIXMAP_PATH__/\/usr\/share\/doc\/NVIDIA_GLX-1.0/' doc/nvidia-settings.desktop &&
    sedit 's/__NVIDIA_SETTINGS_DESKTOP_CATEGORIES__/Settings;DesktopSettings;/' doc/nvidia-settings.desktop &&
    cd ..
  fi &&

  # Builds nvidia-xconfig from source
  cd nvidia-xconfig-$AVERSION &&
  make clean &&
  make &&
  if [[ $(arch) == x86_64 ]] ; then
    install -m 755 _out/Linux_x86_64/nvidia-xconfig .. &&
    install -m 644 _out/Linux_x86_64/nvidia-xconfig.1.gz ..
  else
    install -m 755 _out/Linux_x86/nvidia-xconfig .. &&
    install -m 644 _out/Linux_x86/nvidia-xconfig.1.gz ..
  fi &&
  cd .. &&

  # We make the kernel modules on our own
  cd kernel &&
  sedit "s@\$\(shell uname -r\)@`cat /usr/src/linux/include/config/kernel.release`@" Makefile.* makefile &&
# sedit "s/-O/$CFLAGS/" Makefile.nvidia &&
# NV_VERBOSE=0 EXTRA_CFLAGS=$CFLAGS ARCH=
  make module &&
  rm -f $SOURCE_DIRECTORY/{libGL.so,libGLcore.so.1,libnvidia-tls.so.1} &&

  prepare_install &&

  make install &&
# NV_VERBOSE=0 EXTRA_CFLAGS=$CFLAGS ARCH=
  cd .. &&

  mkdir -p /etc/OpenCL/vendors &&
  install -m0444 nvidia.icd /etc/OpenCL/vendors &&
  install -m0755 nvidia-bug-report.sh /usr/bin &&
  install -m0755 nvidia-installer /usr/bin &&
  install -m0755 nvidia-smi /usr/bin &&
  ln -sf  /usr/bin/nvidia-installer /usr/bin/nvidia-uninstall &&
  install -m0755 nvidia-xconfig /usr/bin &&

  install -m0755 libnv*.so.$VERSION /usr/lib &&
  ln -sf /usr/lib/libnvidia-cfg.so.$VERSION /usr/lib/libnvidia-cfg.so.1 &&
  ln -sf /usr/lib/libnvidia-cfg.so.1 /usr/lib/libnvidia-cfg.so &&

  install -m0755 libXvMCNVIDIA.so.$VERSION /usr/lib &&
  install -m0444 libXvMCNVIDIA.a /usr/lib &&
  ln -sf /usr/lib/libXvMCNVIDIA.so.$VERSION /usr/lib/libXvMCNVIDIA_dynamic.so.1 &&
  ln -sf /usr/lib/libXvMCNVIDIA_dynamic.so.1 /usr/lib/libXvMCNVIDIA_dynamic.so &&

  install -m0755 libcuda.so.$VERSION /usr/lib &&
  ln -sf /usr/lib/libcuda.so.$VERSION /usr/lib/libcuda.so.1 &&
  ln -sf /usr/lib/libcuda.so.1 /usr/lib/libcuda.so &&

  install -m0755 libGL.so.$VERSION /usr/lib &&

  install -m0755 libOpenCL.so.1.0.0 /usr/lib &&
  ln -sf /usr/lib/libOpenCL.so.1.0.0 /usr/lib/libOpenCL.so.1.0 &&
  ln -sf /usr/lib/libOpenCL.so.1.0 /usr/lib/libOpenCL.so.1 &&
  ln -sf /usr/lib/libOpenCL.so.1 /usr/lib/libOpenCL.so &&

  mkdir -p /usr/lib/tls &&
  install -m0755 tls/libnvidia-tls.so.$VERSION /usr/lib/tls &&

  install -m0755 libvdpau_nvidia.so.$VERSION /usr/lib/vdpau &&
  ln -sf /usr/lib/vdpau/libvdpau_nvidia.so.$VERSION /usr/lib/vdpau/libvdpau_nvidia.so.1 &&
  ln -sf /usr/lib/vdpau/libvdpau_nvidia.so.1 /usr/lib/libvdpau_nvidia.so &&

  mkdir -p /usr/lib/xorg/modules/drivers &&
  install -m0755 nvidia_drv.so /usr/lib/xorg/modules/drivers &&
  mkdir -p /usr/lib/xorg/modules/extensions &&
  install -m0755 libglx.so.$VERSION /usr/lib/xorg/modules/extensions &&

  mkdir -p /usr/share/{applications,doc/NVIDIA_GLX-1.0/html} &&
  install -m0444 html/* /usr/share/doc/NVIDIA_GLX-1.0/html &&

  install -m0444 README.txt LICENSE NVIDIA_Changelog /usr/share/doc/NVIDIA_GLX-1.0 &&
  install -m0444 nvidia-xconfig.1.gz nvidia-smi.1.gz nvidia-installer.1.gz /usr/share/man/man1 &&

  # Register Nvidia XvMC library for use in any XvMC enabled media player
  install -m644 XvMCConfig /etc/X11 &&

  install -Dm644 $SCRIPT_DIRECTORY/50-nvidia.conf /usr/share/X11/xorg.conf.d/50-nvidia.conf &&

  if in_depends $MODULE "gtk+-2" ; then
    install -m0755 nvidia-settings /usr/bin &&
    install -m0444 nvidia-settings-$AVERSION/doc/nvidia-settings.desktop /usr/share/applications &&
    install -m0444 nvidia-settings-$AVERSION/doc/nvidia-settings.png /usr/share/doc/NVIDIA_GLX-1.0 &&
    install -m0444 nvidia-settings.1.gz /usr/share/man/man1
  fi

) > $C_FIFO 2>&1
