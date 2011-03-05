(

  prepare_install              &&
  mkdir -p /opt/lunar/plugins  &&
  install -m755 libflashplayer.so /opt/lunar/plugins/ &&

  if [ -d /usr/bin ]; then
  install -m755 usr/bin/* /usr/bin
  fi &&

  if [ -d /usr/lib/kde4 ]; then
  install -m755 usr/lib/kde4/* /usr/lib/kde4
  fi &&

  if [ -d /usr/share/applications ]; then
  install -m644 usr/share/applications/* /usr/share/applications
  fi &&

  if [ -d /usr/share/icons/hicolor ]; then
  cp -af usr/share/icons/hicolor/* /usr/share/icons/hicolor
  fi &&

  if [ -d /usr/share/kde4/services ]; then
  install -m644 usr/share/kde4/services/* /usr/share/kde4/services
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
