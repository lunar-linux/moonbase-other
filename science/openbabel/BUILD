# A gcc-12.1.1 tweak
sedit '39i #include <ctime>' include/openbabel/obutil.h &&

OPTS+=" -DBUILD_MIXED=ON -DOPTIMIZE_NATIVE=ON -DENABLE_TESTS=OFF -DWITH_MAEPARSER=OFF"

  default_cmake_build &&

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
