(

  prepare_install &&
  install -Dm755 libflashplayer.so /opt/lunar/plugins/libflashplayer.so &&

  if in_depends $MODULE libvdpau ; then
    if ! grep -q EnableLinuxHWVideoDecode /etc/adobe/mms.cfg 2>/dev/null ; then
      # From http://www.nvnews.net/vbulletin/showthread.php?t=148409&page=5
      mkdir -p /etc/adobe/ &&
      echo "EnableLinuxHWVideoDecode=1" >> /etc/adobe/mms.cfg
    fi
    if ! grep -q OverrideGPUValidation /etc/adobe/mms.cfg 2>/dev/null ; then
      echo "OverrideGPUValidation=true" >> /etc/adobe/mms.cfg
    fi
  fi &&

# This only applies if you have qt4/kdelibs4 installed.
  if module_installed kdelibs4 ; then
    cp -a usr /
  fi

) > $C_FIFO 2>&1
