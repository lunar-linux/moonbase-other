OPTS+=" -DVTK_USE_SYSTEM_PNG=ON      \
        -DVTK_USE_SYSTEM_EXPAT=ON    \
        -DVTK_USE_SYSTEM_LIBXML2=ON  \
        -DVTK_USE_SYSTEM_PNG=ON      \
        -DVTK_USE_SYSTEM_TIFF=ON     \
        -DVTK_USE_SYSTEM_FREETYPE=ON \
        -DVTK_USE_SYSTEM_ZLIB=ON     \
        -DVTK_USE_SYSTEM_JSONCPP=ON  \
        -DVTK_USE_SYSTEM_OGGTHEORA=ON \
        -DVTK_WRAP_PYTHON=ON         \
        -DCMAKE_CXX_FLAGS="-D__STDC_CONSTANT_MACROS" \
        -DVTK_RENDERING_BACKEND=OpenGL2 \
        -DBUILD_SHARED_LIBS=ON \
        -DBUILD_EXAMPLES=OFF \
        -DVTK_LEGACY_REMOVE=ON" &&

# This is a similar issue as found in the graphviz BUILD; so lunar fix
# does not complain over the inability to find some shared ojbects.
if in_depends $MODULE %JAVA_SDK; then
  if module_installed sun-jdk; then
    . /etc/profile.d/sun-jdk.rc
  else
    . /etc/profile.d/sun-jre.rc
  fi &&
  OPTS+=" -DCMAKE_SHARED_LINKER_FLAGS=-Wl,-rpath,$JAVA_HOME/jre/lib/amd64 \
          -DCMAKE_SHARED_LINKER_FLAGS_RELEASE=-Wl,-rpath,$JAVA_HOME/jre/lib/amd64"
fi &&

if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc &&
  OPTS+=" -DVTK_INSTALL_QT_PLUGIN_DIR=${QT_PLUGIN_PATH}/designer -DVTK_QT_VERSION:STRING=5"
fi &&

default_cmake_build
