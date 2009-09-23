(

  # To be able to find qmake, installed in /opt/lunar/qt/4/bin/
  source /etc/profile.d/qt4.rc  &&

  # Fix boost setup - does same as ./AdjustMt.sh
  sedit "s:lboost_serialization-mt:lboost_serialization:" src/src.pro  &&

  qmake  &&
  make  &&
  prepare_install  &&

  # Commands should not be in mixed-case
  install -D bin/MP3Diags /usr/bin/$MODULE  &&

  # Icon
  for size in 16 22 24 32 36 48 ; do
    install -D desktop/MP3Diags${size}.png /usr/share/icons/hicolor/${size}x${size}/apps/$MODULE.png
  done  &&

  # Desktop menu entry
  cat > $MODULE.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=MP3 Diags
Comment=$SHORT
Exec=$MODULE
Icon=$MODULE
Categories=AudioVideo;Audio;
EOF

  install -D -m644 $MODULE.desktop /usr/share/applications/$MODULE.desktop  &&

  if [[ -e /usr/bin/gtk-update-icon-cache ]] ; then
    gtk-update-icon-cache -f /usr/share/icons/hicolor/
  fi  &&

  gather_docs changelog.txt

) > $C_FIFO 2>&1
