source /etc/profile.d/qt6.rc &&

# Make sure it uses system gmic
rm -rf src &&

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DENABLE_DYNAMIC_LINKING=ON \
        -DCMAKE_BUILD_TYPE=Release \
        -DENABLE_SYSTEM_GMIC=ON \
        -DGMIC_QT_HOST=krita-plugin \ 
        -DBUILD_WITH_QT6=ON \
        -Wno-dev"

cmake -B build -S gmic-qt $OPTS &&
cmake --build build &&

prepare_install &&
cmake --install build
