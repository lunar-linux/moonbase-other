# The recent sun-jdk bump does not containt javah, disabling
OPTS+=" -DVTK_USE_SYSTEM_PNG=ON      \
        -DVTK_USE_SYSTEM_EXPAT=ON    \
        -DVTK_USE_SYSTEM_LIBXML2=ON  \
        -DVTK_USE_SYSTEM_PNG=ON      \
        -DVTK_USE_SYSTEM_TIFF=ON     \
        -DVTK_USE_SYSTEM_FREETYPE=ON \
        -DVTK_USE_SYSTEM_ZLIB=ON     \
        -DVTK_USE_SYSTEM_JSONCPP=ON  \
        -DVTK_USE_SYSTEM_OGGTHEORA=ON \
        -DVTK_USE_SYSTEM_SIX=ON      \
        -DVTK_USE_SYSTEM_HDF5=ON     \
        -DVTK_WRAP_JAVA=OFF           \
        -DVTK_WRAP_PYTHON=ON         \
        -DCMAKE_CXX_FLAGS="-D__STDC_CONSTANT_MACROS" \
        -DVTK_RENDERING_BACKEND=OpenGL2 \
        -DBUILD_SHARED_LIBS=ON \
        -DBUILD_EXAMPLES=OFF \
        -DVTK_LEGACY_REMOVE=ON"

#Maybe a little overkill but just to make sure if qt5 is installed there
#is no confusion
if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc &&
  OPTS+=" -DVTK_QT_VERSION:STRING=5  \
          -DVTK_USE_QVTK=ON   \
          -DVTK_USE_QVTK_OPENGL=ON \
          -DVTK_USE_QVTK_QTOPENGL=ON \
          -DQT_WRAP_CPP=ON \
          -DQT_WRAP_UI=ON \
          -DVTK_INSTALL_QT_DIR="/usr/lib/qt5/plugins/designer" \
          -DDESIRED_QT_VERSION=5 \
          -DVTK_QT_VERSION=5 \
          -DQT_MOC_EXECUTABLE="/usr/lib/qt5/bin/moc" \
          -DQT_UIC_EXECUTABLE="/usr/lib/qt5/bin/uic" \
          -DQT_INCLUDE_DIR="/usr/include/qt5" \
          -DQT_QMAKE_EXECUTABLE="/usr/lib/qt5/bin/qmake" \
          -DVTK_Group_Qt=ON"
fi &&

default_cmake_build
