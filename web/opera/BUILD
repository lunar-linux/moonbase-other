(

  # Change default PREFIX
  sedit 's;PREFIX=/usr/local;PREFIX=/usr;g' install &&
  # Remove finalize_xdg call or the file tracker will catch all mime/application files
  sedit '/finalize_xdg$/d' install &&

  prepare_install &&
  ./install --system --unattended --quiet --force &&

  cat >> /usr/share/opera/defaults/pluginpath.ini << EOF

; Lunar plugin directory
/opt/lunar/plugins=1
EOF

) > $C_FIFO 2>&1
