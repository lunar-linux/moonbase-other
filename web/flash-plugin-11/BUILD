(

  # This only applies if you do not have kdelibs4/Qt4 installed.
  if ! module_installed kdelibs ; then
     rm -rf usr/lib64/kde4 usr/share/kde4
  fi &&

  prepare_install &&
  install -Dm755 libflashplayer.so /opt/lunar/plugins/libflashplayer.so &&
  install -m755 usr/bin/flash-player-properties /usr/bin &&
  install -m755 usr/share/pixmaps/flash-player-properties.png /usr/share/pixmaps/ &&
  install -m755 usr/share/applications/flash-player-properties.desktop /usr/share/applications/ &&
  cp -af usr/share/icons /usr/share/icons/ &&

  if module_installed kdelibs ; then
    cp -af usr/share/kde4/services / &&
    if [ `arch` == "x86_64" ] ; then
      cp -af usr/lib64/* /usr/lib/kde4/
    else
      cp -af usr/lib/* /usr/lib/kde4/
    fi
  fi &&

  if [ -x /usr/bin/gtk-update-icon-cache -a -f /usr/share/icons/hicolor/index.theme ]; then
      gtk-update-icon-cache -f /usr/share/icons/hicolor
  fi &&

  # Enable 3D acceleration using OpenGL
  if ! grep -q OverrideGPUValidation /etc/adobe/mms.cfg 2>/dev/null ; then
    # From http://www.nvnews.net/vbulletin/showthread.php?t=148409&page=7
    mkdir -p /etc/adobe/ &&
    echo "OverrideGPUValidation=true" >> /etc/adobe/mms.cfg
  fi &&

  if in_depends $MODULE libvdpau ; then
    if ! grep -q EnableLinuxHWVideoDecode /etc/adobe/mms.cfg 2>/dev/null ; then
      # From http://www.nvnews.net/vbulletin/showthread.php?t=148409&page=5
      mkdir -p /etc/adobe/ &&
      echo "EnableLinuxHWVideoDecode=1" >> /etc/adobe/mms.cfg
    fi
  fi

) > $C_FIFO 2>&1
