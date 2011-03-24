(

  patch_it $SOURCE2 1  &&

# Fixes a make failure if you say yes to libupnp.
  if in_depends $MODULE libupnp; then
    sed -i "27i #include <assert.h>" modules/services_discovery/upnp_intel.cpp
  fi &&

  # Use a default font which actually exists
  sedit "s:truetype/freefont/FreeSerifBold.ttf:dejavu-ttf/DejaVuSerif-Bold.ttf:" modules/misc/freetype.c  &&

  if in_depends vlc qt4; then
   . /etc/profile.d/qt4.rc
  fi  &&

  OPTS+=" --enable-xvideo --enable-v4l       \
          --disable-nls --disable-mozilla"  &&

  default_build  &&

  # It's 2009. Why can't VLC install their own icons yet?
  for x in 16x16 32x32 48x48 128x128 ; do
    mkdir -p /usr/share/icons/hicolor/$x/apps/  &&
    ln -sf /usr/share/vlc/vlc$x.png /usr/share/icons/hicolor/$x/apps/vlc.png ;
  done  &&

  if [[ -e /usr/bin/gtk-update-icon-cache ]] ; then
    gtk-update-icon-cache -f /usr/share/icons/hicolor/
  fi

) > $C_FIFO 2>&1
