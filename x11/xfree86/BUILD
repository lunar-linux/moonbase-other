install_drm()  {

  DRM_DIR="programs/Xserver/hw/xfree86/os-support/linux/drm/kernel"
  DRM_DEST="/lib/modules/`uname -r`/kernel/drivers"
  mkdir   -p                $DRM_DEST
  cp          $DRM_DIR/*.o  $DRM_DEST  2>/dev/null
  depmod  -a
  true

}

if [ -e /etc/X11/xinit/xinitrc ]; then
   cp /etc/X11/xinit/xinitrc /etc/X11/xinit/xinitrc.orig
   echo "Your master xinitrc file has been backed up as /etc/X11/xinit/xinitrc.orig"
fi

if    [  -f  $CONFIG_CACHE/host.def  ]; then  
  #BECAUSE CONFIGURE dosent always catch this!
  if module_installed freetype2; then
    if ! grep -q "#define BuildFreetype2Library[:space:]*NO" $CONFIG_CACHE/host.def
    then
      sedit "/ HasFreetype2/d"                $CONFIG_CACHE/host.def
      sedit "/ BuildFreetype2Library/d"       $CONFIG_CACHE/host.def
      sedit "/ Freetype2Dir/"                 $CONFIG_CACHE/host.def
      echo "#define HasFreetype2              YES"  >> $CONFIG_CACHE/host.def
      echo "#define BuildFreetype2Library     NO"   >> $CONFIG_CACHE/host.def
      echo "#define Freetype2Dir              /usr" >> $CONFIG_CACHE/host.def
    fi
  fi
  cp     $CONFIG_CACHE/host.def  config/cf/host.def
fi

message  "Building XFree86 takes a very long time."


( 

  echo  "#define  InstallXdmConfig    YES"  >>  config/cf/site.def
  echo  "#define  InstallXinitConfig  YES"  >>  config/cf/site.def

  export CFLAGS=`echo $CFLAGS | sed s/-funroll-loops//`
  export CFLAGS=`echo $CFLAGS | sed s/-ffast-math//`
  export CXXFLAGS=`echo $CXXFLAGS | sed s/-funroll-loops//`
  export CXXFLAGS=`echo $CXXFLAGS | sed s/-ffast-math//`
  export CPPFLAGS=`echo $CPPFLAGS | sed s/-funroll-loops//`
  export CPPFLAGS=`echo $CPPFLAGS | sed s/-ffast-math//`

  if  module_installed  Linux-PAM
  then  echo  "#define  HasPam  YES"  >>  config/cf/site.def
  fi                                    &&

  make World                            &&
  prepare_install                       &&
  cd $SOURCE_DIRECTORY                  &&
  make  install                         &&
  make  install.man                     &&
        install_drm                     &&
  mkdir  -p  /usr/X11R6/include/GL      &&
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
