(
  cat >> usr/share/opera/ini/pluginpath.ini << EOF

; Lunar plugin directory
/opt/lunar/plugins=1
EOF

  # Disable internal md5check
  sedit '/md5check Manifest.md5/d' install.sh &&

  prepare_install &&
  ./install.sh --prefix=/usr &&
  install -m 644 usr/share/pixmaps/opera.xpm /usr/share/pixmaps/ &&

  if [ ! -f /etc/opera6rc ]; then
    install -m 644 etc/opera6rc /etc
  fi &&
  if [ ! -f /etc/opera6rc.fixed ]; then
    install -m 644 etc/opera6rc.fixed /etc
  fi

) > $C_FIFO 2>&1
