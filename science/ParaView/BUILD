OPTS+=" -DBUILD_SHARED_LIBS=ON -DPARAVIEW_INSTALL_DEVELOPMENT_FILES=ON -DBUILD_TESTING=OFF" &&

# This would be nice, but does not work over here...
#OPTS+=" -DUSE_EXTERNAL_VTK:BOOL=ON" &&

sedit "s:TryExec=:TryExec=/usr/bin/:" Applications/ParaView/paraview.desktop.in &&
sedit "s:Icon=paraview:Icon=/usr/share/icons/pvIcon.ico:" Applications/ParaView/paraview.desktop.in &&

default_cmake_build &&

install ../Applications/ParaView/pvIcon.ico /usr/share/icons &&

install -D -m644 Applications/ParaView/paraview.desktop /usr/share/applications/${MODULE}.desktop
