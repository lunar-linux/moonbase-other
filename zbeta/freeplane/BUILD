(

  cd freeplane_framework/ant &&

  # Don't try to run bzr
  sedit "s:bzr_version_info, ::" build.xml &&

  ant &&
  prepare_install &&
  cd $SOURCE_DIRECTORY/freeplane_framework/build &&

  # Recognize correct data directory
  sedit "s:\${FREEPLANE_BASE_DIR}:/usr/share/freeplane:" freeplane.sh &&

  mkdir -p /usr/share/{,doc}/freeplane/ /usr/share/applications/ /usr/share/icons/hicolor/32x32/{apps,mimetypes}/  /usr/share/mime/packages/ &&
  cp -ra * /usr/share/freeplane/ &&
  install -D -m755 freeplane.sh /usr/bin/freeplane &&

  # Desktop menu entry
  cat > $MODULE.desktop << EOF &&
[Desktop Entry]
Type=Application
Name=Freeplane
GenericName=Mind-map
Comment=$SHORT
Exec=$MODULE
Icon=$MODULE
Categories=Office;
MimeType=application/x-freeplane;
EOF

  install -m644 $MODULE.desktop /usr/share/applications/ &&
  install -m644 freeplane.png /usr/share/icons/hicolor/32x32/apps/ &&
  ln -sfn ../apps/freeplane.png /usr/share/icons/hicolor/32x32/mimetypes/application-x-freeplane.png &&

  # From http://www.rfhg.de/wiki/index.php/freeplane_Ubuntu_Installation
  cat > freeplane.xml << EOF &&
<?xml version="1.0" encoding="UTF-8"?>
<mime-info xmlns="http://www.freedesktop.org/standards/shared-mime-info">
  <mime-type type="application/x-freeplane">
    <sub-class-of type="text/xml"/>
    <comment>Mind-map</comment>
    <glob pattern="*.mm"/>
  </mime-type>
</mime-info>
EOF

  install -m644 freeplane.xml /usr/share/mime/packages/ &&

  cd doc &&
  gather_docs *.txt &&

  if [[ -e /usr/bin/gtk-update-icon-cache ]] ; then
    gtk-update-icon-cache -f /usr/share/icons/hicolor/
  fi

) > $C_FIFO 2>&1
