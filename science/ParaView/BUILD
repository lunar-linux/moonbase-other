OPTS+=" -DBUILD_SHARED_LIBS=ON -DPARAVIEW_INSTALL_DEVELOPMENT_FILES=ON -DBUILD_TESTING=OFF" &&

# This would be nice, but does not work over here...
#OPTS+=" -DUSE_EXTERNAL_VTK:BOOL=ON" &&

default_cmake_build &&

install ../Applications/ParaView/pvIcon.ico /usr/share/icons &&

# Desktop menu entry
cat > ${MODULE}.desktop << EOF  &&
[Desktop Entry]
Name=ParaView Viewer
GenericName=Data Viewer
Comment=ParaView allows viewing of large data sets
Type=Application
Terminal=false
Icon=/usr/share/icons/pvIcon.ico
MimeType=application/x-paraview;
Categories=Education;Math;Science;
Exec=/usr/bin/paraview
EOF

install -D -m644 ${MODULE}.desktop /usr/share/applications/${MODULE}.desktop
