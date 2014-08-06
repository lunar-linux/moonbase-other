OPTS+=" -DBUILD_SHARED_LIBS=ON -DPARAVIEW_INSTALL_DEVELOPMENT_FILES=ON -DBUILD_TESTING=OFF" &&

# This would be nice, but does not work over here...
#OPTS+=" -DUSE_EXTERNAL_VTK:BOOL=ON" &&

default_cmake_build &&

install ../Applications/ParaView/pvIcon.png /usr/share/icons &&

# Desktop menu entry
cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=ParaView
Comment=data analysis and visualization
Exec=/usr/bin/paraview
Icon=/usr/share/icons/pvIcon.png
Categories=Qt;KDE;Science;
EOF

install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop
