default_pre_build &&

if in_depends $MODULE qt5 ; then
  . /etc/profile.d/qt5.rc
fi &&

OPTS+=" -DPARAVIEW_ENABLE_XDMF3=ON             \
        -DPARAVIEW_ENABLE_XDMF2=ON             \
        -DPARAVIEW_BUILD_SHARED_LIBS=ON        \
        -DPARAVIEW_INSTALL_DEVELOPMENT_FILES=1 \
        -DVTK_PYTHON_FULL_THREADSAFE=1"        &&

default_cmake_build

echo "Categories=Qt;KDE;Science;" >> /usr/share/applications/org.paraview.ParaView.desktop
