# The recent sun-jdk bump does not containt javah, disabling
OPTS+=" -DVTK_MODULE_USE_EXTERNAL_VTK_png=ON      \
        -DVTK_MODULE_USE_EXTERNAL_VTK_expat=ON    \
        -DVTK_MODULE_USE_EXTERNAL_VTK_libxml2=ON  \
        -DVTK_MODULE_USE_EXTERNAL_VTK_tiff=ON     \
        -DVTK_MODULE_USE_EXTERNAL_VTK_zlib=ON     \
        -DVTK_MODULE_USE_EXTERNAL_VTK_jsoncpp=ON  \
        -DVTK_MODULE_USE_EXTERNAL_VTK_theora=ON \
        -DVTK_MODULE_USE_EXTERNAL_VTK_hdf5=ON     \
        -DVTK_MODULE_USE_EXTERNAL_VTK_libproj=ON \
        -DVTK_VERSIONED_INSTALL=OFF \
        -DCMAKE_SKIP_RPATH=OFF \
        -DCMAKE_SKIP_INSTALL_RPATH=ON \
        -DVTK_WRAP_JAVA=OFF          \
        -DVTK_PYTHON_VERSION=3 \
        -DVTK_WRAP_PYTHON=ON         \
        -DBUILD_SHARED_LIBS=ON \
        -DVTK_BUILD_EXAMPLES=OFF \
        -DVTK_LEGACY_REMOVE=OFF" &&

#Maybe a little overkill but just to make sure if qt5 is installed there
#is no confusion
if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc &&
  OPTS+=" -DVTK_QT_VERSION:STRING=5  \
          -DVTK_QT_VERSION=5"
fi &&

default_cmake_build
