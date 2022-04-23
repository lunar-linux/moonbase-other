. /etc/profile.d/qt5.rc &&

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DENABLE_DYNAMIC_LINKING=ON"

cd $SOURCE_DIRECTORY/gmic-qt &&

if in_depends $MODULE gimp; then
  cmake -B build-gimp -DGMIC_QT_HOST=gimp $OPTS &&
  cmake --build build-gimp &&
  prepare_install &&
  cmake --install $SOURCE_DIRECTORY/gmic-qt/build-gimp
fi &&

if in_depends $MODULE krita; then
  cmake -B build-krita -DGMIC_QT_HOST=krita-plugin $OPTS &&
  cmake --build build-krita &&
  prepare_install &&
  cmake --install $SOURCE_DIRECTORY/gmic-qt/build-krita
fi &&

install -Dm644 $SOURCE_DIRECTORY/gmic-qt/gmic_qt.desktop /usr/share/applications/ &&
install -Dm644 $SOURCE_DIRECTORY/gmic-qt/icons/application/gmic_qt.svg /usr/share/pixmaps/
