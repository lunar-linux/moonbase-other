(
  install_drm()  {
    DRM_DIR="programs/Xserver/hw/xfree86/os-support/linux/drm/kernel"
    DRI_DIR="extras/drm/linux"
    DRM_DEST="/lib/modules/$(uname -r)/kernel/drivers/drm"
    mkdir -p $DRM_DEST
    cd $DRM_DIR &&
    make
    cd $SOURCE_DIRECTORY 
    cd $DRI_DIR &&
    make
    cp $DRI_DIR/*.o $DRM_DEST 2>/dev/null
    depmod -a
    true
  }

  if [ -e /etc/X11/xinit/xinitrc ]; then
    cp /etc/X11/xinit/xinitrc /etc/X11/xinit/xinitrc.orig
    echo "Your master xinitrc file has been backed up as /etc/X11/xinit/xinitrc.orig"
  fi

  bad_flags '-funroll-loops' '-ffast-math'

  # Here we go for our host.def

  echo  "#define InstallXdmConfig YES"          >> config/cf/host.def &&
  echo  "#define InstallXinitConfig YES"        >> config/cf/host.def &&
  echo  "#define InstallXserverSetUID YES"      >> config/cf/host.def &&
  echo  "#define BuildServersOnly NO"           >> config/cf/host.def &&

  if module_installed Linux-PAM ; then
    echo "#define HasPam YES"                   >> config/cf/host.def &&
    echo "#define HasPamMisc YES"               >> config/cf/host.def 
  fi 

  if [ -n "$XORG_DRIVERS" ]; then
    echo "#define XF86CardDrivers $XORG_DRIVERS" >> config/cf/host.def
  fi

  echo  "#define DefaultCCOptions      $CFLAGS" >> config/cf/host.def &&
  echo  "#define LibraryCDebugFlags    $CFLAGS" >> config/cf/host.def &&
  echo  "#define DefaultCDebugFlags    $CFLAGS" >> config/cf/host.def &&
  echo  "#define OptimizedCDebugFlags  $CFLAGS" >> config/cf/host.def &&
  echo  "#define XVendorString \"Lunar-Linux.org (xorg.freedesktop.org $VERSION)\"" >> config/cf/host.def &&
  echo  "#define HasZlib YES"                   >> config/cf/host.def &&
  echo  "#define HasFreetype2 YES"              >> config/cf/host.def &&
  echo  "#define ForceNormalLib  YES"           >> config/cf/host.def &&	
  echo  "#define HasExpat  YES"			>> config/cf/host.def &&
  echo  "#define UseExpat  YES"                 >> config/cf/host.def &&
  echo  "#define HasLibpng YES"			>> config/cf/host.def &&
  echo  "#define BuildDocs NO"			>> config/cf/host.def &&
  echo  "#define HasLibxml2 YES"		>> config/cf/host.def;
  echo  "#define InstallFontconfigLibrary NO"   >> config/cf/host.def &&
  echo  "#define SharedLibXft YES"		>> config/cf/host.def &&
  echo  "#define PreferXdmcpIPv6 YES"		>> config/cf/host.def &&
  echo  "#define BuildFontServer NO"		>> config/cf/host.def &&
  echo  "#define BuildFonts NO"			>> config/cf/host.def &&
  echo  "#define MakeLocalFontDir NO"		>> config/cf/host.def &&
  echo  "#define InstallFSConfig NO"		>> config/cf/host.def &&
  
  if grep -q "Compilation aborted" /usr/include/linux/config.h ; then
    # This must happen or it will cause the module to break
    # claiming "Kernel only header included in userspace"
    devoke_installwatch &&
    cp -rL /usr/src/linux/include/linux/{autoconf.h,config.h} /usr/include/linux &&
    invoke_installwatch
  fi

  patch_it $SOURCE_CACHE/$SOURCE4 1  &&
  
  # explicitly exit here now and not later on
  make World || exit 1
  
  prepare_install                       &&
  cd $SOURCE_DIRECTORY                  &&
  make install                          &&
  make install.man                      &&
  install_drm                           &&
  mkdir -p /usr/X11R6/include/GL        &&
  rm     -f  /usr/X11R6/lib/libz.a      &&
  rm     -f /usr/X11R6/include/zlib.h   &&
  rm     -f /usr/X11R6/include/zconf.h  &&
  rm     -f /usr/X11R6/lib/libz.a       &&

  if [ ! -e /etc/skel/.xsession ]; then
    cp $SCRIPT_DIRECTORY/xsession /etc/skel/.xsession
  fi &&

  if [ ! -d /usr/bin/X11 ]; then
    ln -sf /usr/X11R6/bin /usr/bin/X11
  fi &&

  if [ ! -d /usr/X11 ]; then
    ln -sf /usr/X11R6 /usr/X11
  fi &&

  if [ ! -e /usr/include/X11 ]; then
    ln -sf  /usr/X11R6/include/X11 /usr/include/X11
  fi &&

  if [ ! -d /usr/lib/X11 ]; then
    ln -sf /usr/X11R6/lib/X11 /usr/lib/X11
  fi &&
  
  if [ ! -d /usr/X11R6/lib/X11/fonts ]; then
    ln -sf /usr/share/fonts /usr/X11R6/lib/X11/fonts
  fi &&

  if [ ! -e  /usr/lib/libMesaGLU.so ]; then
    ln -sf /usr/X11R6/lib/libGLU.so.1.3 /usr/lib/libMesaGLU.so
  fi &&

  if [ ! -e /usr/X11R6/lib/libMesaGL.so ]; then
    ln -sf /usr/X11R6/lib/libGL.so.1.2 /usr/X11R6/lib/libMesaGL.so
  fi &&
  
  if [ ! -e /usr/lib/pkgconfig/xft.pc ]; then
    ln -sf /usr/X11R6/lib/pkgconfig/xft.pc /usr/lib/pkgconfig/xft.pc
  fi &&

  install -g0 -m0 -m0700 $SCRIPT_DIRECTORY/init.d/ICE,X11-unix /etc/init.d/ &&
  ln -sf /etc/init.d/ICE,X11-unix /etc/rc2.d/S20ICE,X11-unix &&
  ln -sf /etc/init.d/ICE,X11-unix /etc/rc3.d/S20ICE,X11-unix &&
  ln -sf /etc/init.d/ICE,X11-unix /etc/rc4.d/S20ICE,X11-unix &&
  ln -sf /etc/init.d/ICE,X11-unix /etc/rc5.d/S20ICE,X11-unix &&
  /etc/init.d/ICE,X11-unix start &&

  if [ -e /etc/X11/xinit/xinitrc.orig ]; then
    cp /etc/X11/xinit/xinitrc.orig /etc/X11/xinit/xinitrc
    message "${MESSAGE_COLOR}Your master xinitrc file has been restored from /etc/X11/xinit/xinitrc.orig${DEFAULT_COLOR}"
  fi &&

  # cosmetic but needed adjustments:
  echo 'XTerm*loginShell: true' >> /etc/X11/app-defaults/XTerm &&
  echo 'XTerm*loginShell: true' >> /etc/X11/app-defaults/XTerm-color
 
) > $C_FIFO 2>&1
