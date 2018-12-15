OPTS+=" -D BUILD_SHARED_LIBS=ON \
        -D ENABLE_GTK_DOC=OFF \
        -D BUILD_GTK_TESTS=OFF \
        -D ENABLE_XPDF_HEADERS=ON"

# If in depends we will now build qt5 libs
if in_depends $MODULE qt5; then
  CXXFLAGS+=" --std=c++11" &&
  . /etc/profile.d/qt5.rc
fi &&

default_cmake_build &&

if [ "$SPLASH" == "y" ]; then
  ln -sf /usr/include/poppler/splash /usr/include/splash
fi
