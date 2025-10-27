OPTS+=" -DRUN_SWIG=ON \
        -DBUILD_MIXED=ON \
        -DOPTIMIZE_NATIVE=ON \
        -DENABLE_TESTS=OFF \
        -DWITH_MAEPARSER=OFF \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION

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
