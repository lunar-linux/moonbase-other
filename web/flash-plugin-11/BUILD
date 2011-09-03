(

  # This only applies if you do not have kdelibs4/Qt4 installed.
  if ! module_installed kdelibs4 ; then
     rm -rf usr/lib/kde4 usr/share/kde4
  fi &&

  prepare_install &&
  install -Dm755 libflashplayer.so /opt/lunar/plugins/libflashplayer.so &&
  cp -af usr / &&

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
