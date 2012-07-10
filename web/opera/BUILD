(

  # Remove finalize_desktop call or the file tracker will catch all mime/application files
  sedit '/finalize_desktop$/s,.*,true,g' install &&
  sedit '/finalize_desktop.*null.*/s,.*,true,' install &&

  prepare_install &&
  ./install --prefix /usr --unattended --quiet --force &&

  cat >> /usr/share/opera/defaults/pluginpath.ini << EOF

; Lunar plugin directory
/usr/lib/lunar/plugins=1
EOF

) > $C_FIFO 2>&1
