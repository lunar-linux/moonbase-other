(

  install_drm()  {
    DRM_DIR="programs/Xserver/hw/xfree86/os-support/linux/drm/kernel"
    DRM_DEST="/lib/modules/$(uname -r)/kernel/drivers"
    mkdir -p $DRM_DEST
    cp $DRM_DIR/*.o $DRM_DEST 2>/dev/null
    depmod -a
    true
  }

  if [ -e /etc/X11/xinit/xinitrc ]; then
    cp /etc/X11/xinit/xinitrc /etc/X11/xinit/xinitrc.orig
    echo "Your master xinitrc file has been backed up as /etc/X11/xinit/xinitrc.orig"
  fi

  message "Building XOrg takes a very long time."

  echo  "#define  InstallXdmConfig    YES"  >>  config/cf/site.def
  echo  "#define  InstallXinitConfig  YES"  >>  config/cf/site.def

  export CFLAGS=`echo $CFLAGS | sed s/-funroll-loops//`
  export CFLAGS=`echo $CFLAGS | sed s/-ffast-math//`
  export CXXFLAGS=`echo $CXXFLAGS | sed s/-funroll-loops//`
  export CXXFLAGS=`echo $CXXFLAGS | sed s/-ffast-math//`
  export CPPFLAGS=`echo $CPPFLAGS | sed s/-funroll-loops//`
  export CPPFLAGS=`echo $CPPFLAGS | sed s/-ffast-math//`

  # first copy the stored settings over:
  cp $CONFIG_CACHE/host.def config/cf/host.def &&

  # then add stuff on the fly:
  if module_installed Linux-PAM ; then
    echo "#define HasPam YES" >> config/cf/site.def
  fi &&

  echo  "#define DefaultCCOptions      $CFLAGS" >> config/cf/host.def &&
  echo  "#define DefaultGcc2i386Opt    $CFLAGS" >> config/cf/host.def &&
  echo  "#define LibraryCDebugFlags    $CFLAGS" >> config/cf/host.def &&
  echo  "#define DefaultCDebugFlags    $CFLAGS" >> config/cf/host.def &&
  echo  "#define OptimizedCDebugFlags  $CFLAGS" >> config/cf/host.def &&
	  

  if grep -q "Compilation aborted" /usr/include/linux/config.h ; then
    # This must happen or it will cause the module to break
    # claiming "Kernel only header included in userspace"
    devoke_installwatch &&
    cp -rL /usr/src/linux/include/linux/{autoconf.h,config.h} /usr/include/linux &&
    invoke_installwatch
  fi

  make World                            &&
  prepare_install                       &&
  cd $SOURCE_DIRECTORY                  &&
  make install                          &&
  make  install.man                     &&
  install_drm                           &&
  mkdir -p /usr/X11R6/include/GL        &&
  rm     -f  /usr/X11R6/lib/libz.a      &&
  rm     -f /usr/X11R6/include/zlib.h   &&
  rm     -f /usr/X11R6/include/zconf.h  &&
  rm     -f /usr/X11R6/lib/libz.a       &&

  if  [  !  -e                      /etc/skel/.xsession  ];  then
    cp  $SCRIPT_DIRECTORY/xsession  /etc/skel/.xsession
  fi  &&

  if  [  !  -e                    /usr/bin/X11  ];  then
    ln      -sf   /usr/X11R6/bin  /usr/bin/X11
  fi  &&

  if  [  !  -e          /usr/X11  ];  then
    ln      -sf  X11R6  /usr/X11
  fi  &&

  if  [  !  -e                         /usr/include/X11  ];  then
    ln      -sf  ../X11R6/include/X11  /usr/include/X11
  fi  &&

  if  [  !  -e                     /usr/lib/X11  ];  then
    ln      -sf  ../X11R6/lib/X11  /usr/lib/X11
  fi  &&

  if  [  !  -e                     /usr/lib/libMesaGLU.so ];  then
    ln      -sf  /usr/X11R6/lib/libGLU.so.1.3 /usr/lib/libMesaGLU.so
  fi  &&

  if  [  !  -e                /usr/X11R6/lib/libMesaGL.so ];  then
    ln      -sf  /usr/X11R6/lib/libGL.so.1.2 /usr/X11R6/lib/libMesaGL.so
  fi

) > $C_FIFO 2>&1
