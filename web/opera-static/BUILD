(
  cat >> usr/share/opera/defaults/pluginpath.ini << EOF

; Lunar plugin directory
/opt/lunar/plugins=1
EOF

  # Disable internal md5check
  sedit '/md5check Manifest.md5/d' install.sh &&

  prepare_install &&
  ./install.sh --prefix=/usr &&
  install -m 644 usr/share/pixmaps/opera.xpm /usr/share/pixmaps/ &&

  for i in operaprefs_default.ini operaprefs_fixed.ini; do
    [ -f /etc/${i} ] || install -m 644 etc/${i} /etc/
  done

) > $C_FIFO 2>&1
