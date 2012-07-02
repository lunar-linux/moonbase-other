(

  if in_depends $MODULE lua; then
    LUA_LIBS+=" /usr/lib/lua"
  fi &&

  if module_installed live555; then
    CPPFLAGS_live555="-I/usr/lib/live/liveMedia -I/usr/lib/live/groupsock -I/usr/lib/live/BasicUsageEnvironment -I/usr/lib/live/UsageEnvironment"
  fi &&

  if in_depends vlc qt4; then
   . /etc/profile.d/qt4.rc
  fi &&

  OPTS+=" --enable-xvideo --enable-real --enable-realrtsp --enable-media-library --disable-sid" &&

  default_build &&

  sedit "s:Icon=vlc:Icon=/usr/share/icons/hicolor/32x32/apps/vlc.png:" /usr/share/applications/vlc.desktop &&
  sedit "s:Categories=:Categories=Multimedia;:" /usr/share/applications/vlc.desktop &&

  if [[ -e /usr/bin/gtk-update-icon-cache ]] ; then
    gtk-update-icon-cache -f /usr/share/icons/hicolor/
  fi

)
