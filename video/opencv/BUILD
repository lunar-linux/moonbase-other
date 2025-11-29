if in_depends $MODULE qt6-5compat; then
  source /etc/profile.d/qt6.rc
fi &&

OPTS+=" -DBUILD_SHARED_LIBS=ON \
        -DOPENCV_GENERATE_PKGCONFIG=ON \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DOPENCV_EXTRA_MODULES_PATH=opencv_contrib-$VERSION/modules \
        -DCMAKE_CONFIGURATION_TYPES=Release \ 
        -DENABLE_CXX11=ON \
        -DBUILD_PERF_TESTS=OFF \
        -DBUILD_WITH_DEBUG_INFO=OFF \
        -DCMAKE_CXX_STANDARD=17 \
        -DOPENCV_GENERATE_PKGCONFIG=ON \
        -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
        -DWITH_EIGEN=OFF \
        -DBUILD_DOCS=OFF \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION &&

ln -sf /usr/lib64/pkgconfig/opencv4.pc /usr/lib64/pkgconfig/opencv.pc &&
ln -sf /usr/include/opencv4/opencv2 /usr/include/opencv2
