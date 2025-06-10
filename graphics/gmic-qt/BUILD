source /etc/profile.d/qt6.rc &&

cmake -B build-qt -S gmic-qt \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DCMAKE_BUILD_TYPE=Release \
    -DENABLE_DYNAMIC_LINKING=ON \
    -Wno-dev \
    -DBUILD_WITH_QT6=ON \
    -DGMIC_QT_HOST=none &&

cmake --build build-qt &&

prepare_install &&
cmake --install build-qt &&

install -Dm644 $SOURCE_DIRECTORY/$MODULE/gmic_qt.desktop /usr/share/applications/ &&
install -Dm644 $SOURCE_DIRECTORY/$MODULE/icons/application/gmic_qt.svg /usr/share/pixmaps/ &&

mkdir -p /usr/share/$MODULE/dark &&
install -Dm644 $SOURCE_DIRECTORY/$MODULE/icons/*.png /usr/share/$MODULE/ &&
install -Dm644 $SOURCE_DIRECTORY/$MODULE/icons/dark/*.png /usr/share/$MODULE/dark/
