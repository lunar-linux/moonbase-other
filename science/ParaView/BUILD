if in_depends $MODULE qt4; then
  . /etc/profile.d/qt4.rc
fi &&

if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

default_cmake_build &&

mv -f /usr/XdmfConfig.cmake /usr/lib/cmake/paraview-5.0/ &&
install ../Applications/ParaView/pvIcon* /usr/share/icons/
