(
cat >> usr/share/opera/ini/pluginpath.ini << EOF

; Lunar plugin directory
/opt/lunar/plugins=1
EOF

  # Make beta co-exist happily with current version
  sedit '/^export OPERA_BINARYDIR/a export OPERA_PERSONALDIR="\\$HOME/.opera-beta"' install.sh &&

  # Disable internal md5check
  sedit '/md5check Manifest.md5/d' install.sh &&
  prepare_install &&

  ./install.sh --prefix=/opt/lunar/opera-beta &&
  install -m 644 usr/share/pixmaps/opera.xpm /usr/share/pixmaps/

) > $C_FIFO 2>&1
