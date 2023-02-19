OPTS+=" -DWXM_INCLUDE_FONTS=OFF  \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DWXM_INTERPROCEDURAL_OPTIMIZATION=OFF \
        -DwxWidgets_LIBRARIES=/usr/lib/"

cmake . -B $MODULE -G Ninja $OPTS &&
cmake --build $MODULE &&
prepare_install &&
cmake --install $MODULE &&

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
