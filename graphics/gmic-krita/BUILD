source /etc/profile.d/qt5.rc &&

# Make sure it uses system gmic
rm -rf src &&

cmake -B build -S gmic-qt \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DENABLE_DYNAMIC_LINKING=ON \
    -DENABLE_SYSTEM_GMIC=ON \
    -Wno-dev \
    -DGMIC_QT_HOST=krita-plugin &&

cmake --build build &&

prepare_install &&
cmake --install build
