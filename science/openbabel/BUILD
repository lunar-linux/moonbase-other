
# This is a temp thing until I can identify which file in /doc is causing this error;
# xargs: unmatched single quote; by default quotes are special to xargs unless you use the -0 option
# The error prevents an install log from being created.
  rm -rf doc/guide/ &&
#

  default_cmake_build

  if in_depends $MODULE wxGTK ; then
    install ../src/GUI/babel*.* /usr/share/pixmaps &&
 # Desktop menu entry
  cat > $MODULE.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Openbabel
Comment=A chemical toolbox
Exec=/usr/bin/obgui
Icon=/usr/share/pixmaps/babel2.ico
Categories=Science;
EOF

  install -D -m644 $MODULE.desktop /usr/share/applications/$MODULE.desktop
  fi
