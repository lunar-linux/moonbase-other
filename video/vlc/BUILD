(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  if in_depends qt4; then
   . /etc/profile.d/qt4.rc
  fi &&

  if in_depends ffmpeg lame ; then
    OPTS+=" --with-ffmpeg-mp3lame"
  fi &&

  OPTS="$OPTS --enable-release --enable-x11 --enable-xvideo --enable-ffmpeg --enable-v4l"

  default_build

  #It's 2009. Why can't VLC install their own icons yet?
  if module_installed gnome2 || module_installed xfce4 ; then
    for x in 16x16 32x32 48x48 128x128 ; do
      ln -sf /usr/share/vlc/vlc$x.png /usr/share/icons/hicolor/$x/apps/vlc.png ;
    done

    for x in `ls -d /usr/share/icons/*` ; do
      gtk-update-icon-cache -f $x ;
    done
  fi

) > $C_FIFO 2>&1
