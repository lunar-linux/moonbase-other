install_drm()  {

  DRM_DIR="programs/Xserver/hw/xfree86/os-support/linux/drm/kernel"
  DRM_DEST="/lib/modules/`installed_version  linux`/kernel/drivers/char/drm"
  mkdir   -p                $DRM_DEST
  cp          $DRM_DIR/*.o  $DRM_DEST  2>/dev/null
  depmod  -a
  true

}

if [ -e /etc/X11/xinit/xinitrc ]; then
   cp /etc/X11/xinit/xinitrc /etc/X11/xinit/xinitrc.orig
   echo "Your master xinitrc file has been backed up as /etc/X11/xinit/xinitrc.orig"
fi

if    [  -f  $CONFIG_CACHE/host.def  ]
then  cp     $CONFIG_CACHE/host.def  config/cf/host.def
fi

message  "Building XFree86 takes a very long time."


( 

  echo  "#define  InstallXdmConfig    YES"  >>  config/cf/site.def
  echo  "#define  InstallXinitConfig  YES"  >>  config/cf/site.def

  if  module_installed  Linux-PAM
  then  echo  "#define  HasPam  YES"  >>  config/cf/site.def
  fi

  # The following patch was used for xfree86 4.1.0 with linux 2.4.17
  # patch  -p1  <  $SCRIPT_DIRECTORY/drm.h.patch

  # patch for programs/Xserver/hw/xfree86/os-support/linux/drm/kernel/Makefile.linux. The patch removes i810 and i830 from DRM because they are broken.
  patch -p1 <  $SCRIPT_DIRECTORY/xfree86-drm.patch               &&
  
  # Patch for X version of bad version of zlib
  patch  -p1  <  $SCRIPT_DIRECTORY/4.2.0-zlib-security.patch     &&

  make  World                                                    &&
  prepare_install                                                &&
  cd    $SOURCE_DIRECTORY                                        &&
  make  install                                                  &&
  make  install.man                                              &&
        install_drm                                              &&
  mkdir  -p  /usr/X11R6/include/GL                               &&
  rm     -f  /usr/X11R6/lib/libz.a                               &&

  if  [  !  -e                      /etc/skel/.xsession  ];  then
    cp  $SCRIPT_DIRECTORY/xsession  /etc/skel/.xsession
  fi

  if  [  !  -e                    /usr/bin/X11  ];  then
    ln      -sf   /usr/X11R6/bin  /usr/bin/X11
  fi                                                             &&

  if  [  !  -e          /usr/X11  ];  then
    ln      -sf  X11R6  /usr/X11
  fi                                                             &&

  if  [  !  -e                         /usr/include/X11  ];  then
    ln      -sf  ../X11R6/include/X11  /usr/include/X11
  fi                                                             &&

  if  [  !  -e                     /usr/lib/X11  ];  then
    ln      -sf  ../X11R6/lib/X11  /usr/lib/X11
  fi                                                             &&

  if  [  !  -e                     /usr/lib/libMesaGLU.so ];  then
    ln      -sf  /usr/X11R6/lib/libGLU.so.1.3 /usr/lib/libMesaGLU.so
  fi                                                             &&

  if  [  !  -e                /usr/X11R6/lib/libMesaGL.so ];  then
    ln      -sf  /usr/X11R6/lib/libGL.so.1.2 /usr/X11R6/lib/libMesaGL.so
  fi


) > $C_FIFO 2>&1
