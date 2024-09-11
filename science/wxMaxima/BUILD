OPTS+=" -DWXM_INCLUDE_FONTS=OFF  \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_CXX_STANDARD=14 \
        -DCMAKE_CXX_COMPILER=g++ \
        -DWXM_DISABLE_WEBVIEW=ON \
        -DwxWidgets_LIBRARIES=/usr/lib/ \
        -Wno-dev"

cmake . -B $MODULE-$VERSION -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&
prepare_install &&
cmake --install $MODULE-$VERSION &&

    # Desktop menu entry
  cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=wxMaxima
Comment=A computer algebra system
Exec=/usr/bin/wxmaxima
Icon=/usr/share/doc/wxmaxima/wxMaximaLogo.png
Categories=Science;Application;;
EOF

  install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop
