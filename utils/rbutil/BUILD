. /etc/profile.d/qt5.rc &&

OPTS+=" -DCCACHE_PROGRAM=FALSE \
        -DUSE_SYSTEM_QUAZIP=ON \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release"

cmake -S utils -B build -G Ninja \
         -DCMAKE_BUILD_TYPE=None \
         -DCMAKE_INSTALL_PREFIX=/usr \
         -Wno-dev \
         $OPTS &&

cmake --build build

prepare_install &&
install -Dm 755 build/rbutilqt/RockboxUtility -t /usr/bin/ &&
install -Dm 644 utils/rbutilqt/RockboxUtility.desktop -t /usr/share/applications/ &&
install -Dm 644 docs/logo/rockbox-clef.svg -t /usr/share/pixmaps/
