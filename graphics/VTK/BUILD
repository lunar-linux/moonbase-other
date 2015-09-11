# This is a similar issue as found in the graphviz BUILD; so lunar fix
# does not complain over the inability to find some shared ojbects.
if in_depends $MODULE %JAVA_SDK; then
  if module_installed sun-jdk; then
    . /etc/profile.d/sun-jdk.rc
  else
    . /etc/profile.d/sun-jre.rc
  fi &&
  OPTS+=" -DCMAKE_SHARED_LINKER_FLAGS=-Wl,-rpath,/usr/java/latest/jre/lib/amd64"
fi &&

if in_depends $MODULE qt4; then
  . /etc/profile.d/qt4.rc &&
  OPTS+=" -DVTK_INSTALL_QT_PLUGIN_DIR=${QT_PLUGIN_PATH}/designer"
fi &&

OPTS+=" -DBUILD_SHARED_LIBS=ON -DBUILD_EXAMPLES=OFF -DVTK_LEGACY_REMOVE=ON" &&

default_cmake_build
