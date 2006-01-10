(

  if [ -e /etc/X11/xinit/xinitrc ]; then
    cp /etc/X11/xinit/xinitrc /etc/X11/xinit/xinitrc.orig
    message "Your master xinitrc file has been backed up as /etc/X11/xinit/xinitrc.orig"
  fi

  bad_flags '-funroll-loops' '-ffast-math'

  # Here we go for our host.def
  (
   echo  "#define InstallXdmConfig YES"
   echo  "#define InstallXinitConfig YES"
   echo  "#define InstallXserverSetUID YES"
   echo  "#define BuildServersOnly NO"

   if module_installed Linux-PAM ; then
     echo "#define HasPam YES"
     echo "#define HasPamMisc YES"
   fi 

   if [ -n "$XORG_DRIVERS" ]; then
     echo "#define XF86CardDrivers $XORG_DRIVERS"
   fi

   echo  "#define DefaultCCOptions      $CFLAGS"
   echo  "#define LibraryCDebugFlags    $CFLAGS"
   echo  "#define DefaultCDebugFlags    $CFLAGS"
   echo  "#define OptimizedCDebugFlags  $CFLAGS"
   echo  "#define XVendorString \"Lunar-Linux.org (xorg.freedesktop.org $VERSION)\""
   echo  "#define HasZlib YES"
   echo  "#define HasFreetype2 YES"
   echo  "#define ForceNormalLib  YES"
   echo  "#define HasExpat  YES"
   echo  "#define UseExpat  YES"
   echo  "#define HasLibpng YES"
   echo  "#define BuildDocs NO"
   echo  "#define HasLibxml2 YES"
   echo  "#define InstallFontconfigLibrary NO"
   echo  "#define SharedLibXft YES"
   echo  "#define PreferXdmcpIPv6 YES"
   echo  "#define BuildFontServer NO"
   echo  "#define BuildFonts NO"
   echo  "#define MakeLocalFontDir NO"
   echo  "#define InstallFSConfig NO"
  ) >> config/cf/host.def
  
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
  mkdir -p /usr/X11R6/include/GL        &&
  rm -f /usr/X11R6/lib/libz.a           &&
  rm -f /usr/X11R6/include/zlib.h       &&
  rm -f /usr/X11R6/include/zconf.h      &&
  rm -f /usr/X11R6/lib/libz.a           &&

  if [ ! -e /etc/skel/.xsession ]; then
    cp $SCRIPT_DIRECTORY/xsession /etc/skel/.xsession
  fi &&

  ln -sf /usr/X11R6/bin /usr/bin/X11 &&
  ln -sf /usr/X11R6 /usr/X11 &&
  ln -sf /usr/X11R6/include/X11 /usr/include/X11 &&
  ln -sf /usr/X11R6/lib/X11 /usr/lib/X11 &&
  ln -sf /usr/share/fonts /usr/X11R6/lib/X11/fonts &&
  ln -sf /usr/X11R6/lib/libGLU.so.1.3 /usr/lib/libMesaGLU.so &&
  ln -sf /usr/X11R6/lib/libGL.so.1.2 /usr/X11R6/lib/libMesaGL.so &&
  ln -sf /usr/X11R6/lib/pkgconfig/xft.pc /usr/lib/pkgconfig/xft.pc &&

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
  if ! grep -q 'XTerm*loginShell:' /etc/X11/app-defaults/XTerm ; then
    echo 'XTerm*loginShell: true' >> /etc/X11/app-defaults/XTerm &&
    echo 'XTerm*loginShell: true' >> /etc/X11/app-defaults/XTerm-color
  fi &&
 
) > $C_FIFO 2>&1
