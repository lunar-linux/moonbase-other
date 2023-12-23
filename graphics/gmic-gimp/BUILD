source /etc/profile.d/qt5.rc &&

cmake -B build-gimp -S gmic-qt \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DENABLE_DYNAMIC_LINKING=ON \
    -DGMIC_QT_HOST=gimp &&

cmake --build build-gimp &&

prepare_install &&
cmake --install build-gimp

#install -Dm644 $SOURCE_DIRECTORY/$MODULE/gmic_qt.desktop /usr/share/applications/ &&
#install -Dm644 $SOURCE_DIRECTORY/$MODULE/icons/application/gmic_qt.svg /usr/share/pixmaps/ &&

#mkdir -p /usr/share/$MODULE/dark &&
#install -Dm644 $SOURCE_DIRECTORY/$MODULE/icons/*.png /usr/share/$MODULE/ &&
#install -Dm644 $SOURCE_DIRECTORY/$MODULE/icons/dark/*.png /usr/share/$MODULE/dark/
