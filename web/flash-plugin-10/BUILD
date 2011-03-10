(

  prepare_install              &&
  mkdir -p /opt/lunar/plugins  &&
  install -m755 libflashplayer.so /opt/lunar/plugins/ &&

  if in_depends $MODULE libvdpau ; then
    if ! grep -q EnableLinuxHWVideoDecode /etc/adobe/mms.cfg 2>/dev/null ; then
      # From http://www.nvnews.net/vbulletin/showthread.php?t=148409&page=5
      mkdir -p /etc/adobe/ &&
      echo "EnableLinuxHWVideoDecode=1" >> /etc/adobe/mms.cfg
    fi
  fi

) > $C_FIFO 2>&1
