OPTS+=" -DBUILD_SHARED_LIBS=ON \
        -DENABLE_GTK_DOC=OFF \
        -DENABLE_UNSTABLE_API_ABI_HEADERS=ON"

if in_depends $MODULE qt6-base; then
   source /etc/profile.d/qt6.rc
fi &&

if in_depends $MODULE qt5; then
   source /etc/profile.d/qt5.rc
fi &&

default_cmake_build &&

if [ "$SPLASH" == "y" ]; then
   ln -sf /usr/include/poppler/splash /usr/include/splash
fi
