OPTS+=" -DBUILD_SHARED_LIBS=ON \
        -DENABLE_GTK_DOC=OFF \
        -DBUILD_GTK_TESTS=OFF \
        -DENABLE_CMS=lcms2 \
        -DENABLE_UNSTABLE_API_ABI_HEADERS=ON"

# If in depends we will now build qt5 libs
if in_depends $MODULE qt5; then
   CXXFLAGS+=" --std=c++11" &&
   . /etc/profile.d/qt5.rc
fi &&

if in_depends $MODULE qt6-base; then
   source /etc/profile.d/qt6.rc
fi &&

default_cmake_build &&

if [ "$SPLASH" == "y" ]; then
   ln -sf /usr/include/poppler/splash /usr/include/splash
fi
