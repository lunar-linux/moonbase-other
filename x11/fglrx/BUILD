(
  FGLRX_DIRECTORY="$SOURCE_DIRECTORY/fglrx-install"

  sh $SOURCE --extract fglrx-install &&
  cd fglrx-install &&

  # We build the kernel BEFORE actually calling prepare install
  # so it doesn't remove a working driver incase the kernel module
  # fails to compile  

  export KPATH="/usr/src/linux" &&

  if [ -f $KPATH/include/linux/utsrelease.h ]; then
    KVER=`grep UTS_RELEASE $KPATH/include/linux/utsrelease.h | cut -d'"' -f2`
  else
    KVER=`grep UTS_RELEASE $KPATH/include/linux/version.h | cut -d'"' -f2`
  fi &&

  export KPATH KVER &&

  cd common/lib/modules/fglrx/build_mod/ &&

  # This symlink is needed for the kernel module to compile correctly
  ln -s $FGLRX_DIRECTORY/arch/x86/lib/modules/fglrx/build_mod/libfglrx_ip.a.GCC4 \
        $FGLRX_DIRECTORY/common/lib/modules/fglrx/build_mod &&

  sh make.sh || exit 1

  cd $FGLRX_DIRECTORY &&

  prepare_install &&

  mkdir -p /etc/ati &&

  # Install /etc files
  for file in common/etc/ati/*; do
    install -m0644 $file /etc/ati/
  done &&

  if [ ! -f /etc/ati/amdpcsdb ]; then
    install -m666 /etc/ati/amdpcsdb.default /etc/ati/amdpcsdb
  fi &&
  
  # Easy way out
  cp -af common/usr/sbin /usr &&
  cp -af common/usr/share/ati /usr/share &&
  cp -af common/usr/share/doc /usr/share &&
  cp -af common/usr/share/icons /usr/share &&
  cp -af common/usr/share/man /usr/share &&
  cp -af common/usr/include /usr &&

  # X11R6 is deprecated
  
  cp -af common/usr/X11R6/include /usr/X11 &&
  install -m644 packages/Debian/dists/sid/amdcccle.desktop /usr/share/applications &&

  cp -af arch/x86/usr/sbin /usr &&

  install -m755 arch/x86/usr/X11R6/bin/* /usr/X11/bin/ &&

  mkdir -p /usr/X11/lib/dri &&

  cp -af arch/x86/usr/X11R6/lib/lib* /usr/X11/lib/xorg/ &&
  cp -af arch/x86/usr/X11R6/lib/modules/dri/fglrx_dri.so \
         /usr/X11/lib/dri &&

  # Setup symlinks
  ln -sf /usr/X11/lib/xorg/libGL.so.1.2 \
         /usr/X11/lib/libGL.so.1 &&

  ln -sf /usr/X11/lib/xorg/libGL.so.1.2 \
         /usr/X11/lib/libGL.so &&

  unset file

  for file in libfglrx_dm libfglrx_gamma libfglrx_pp libfglrx_tvout ; do
    ln -sf /usr/X11/lib/xorg/${file}.so.1.0 \
          /usr/X11/lib/xorg/${file}.so.1
  done &&

  cp -af x710/usr/X11R6/lib/modules /usr/X11/lib/xorg/ &&

  mkdir -p /usr/X11/lib/modules/dri &&
  ln -sf /usr/X11/lib/dri/fglrx_dri.so /usr/X11/lib/modules/dri/ &&

  mkdir -p /lib/modules/${KVER}/drivers/char/drm &&
  install -m644 common/lib/modules/fglrx/build_mod/2.6.x/fglrx.ko \
          /lib/modules/${KVER}/drivers/char/drm/ &&

  #Update module dependencies
  depmod

) > $C_FIFO 2>&1
