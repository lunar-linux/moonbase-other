source /etc/profile.d/qt6.rc

export LANG='en_US.UTF-8'
export CFLAGS+=" -ffat-lto-objects"
export CXXFLAGS+=" -ffat-lto-objects"

OPTS+=" -DPARAVIEW_QT_VERSION=6          \
        -DPARAVIEW_USE_QT=ON             \
        -DPARAVIEW_USE_PYTHON=ON         \
        -DCMAKE_INSTALL_PREFIX=/usr      \
        -DCMAKE_BUILD_TYPE=Release       \
        -DCMAKE_INSTALL_LIBDIR=lib       \
        -DPARAVIEW_VERSIONED_INSTALL=OFF \
        -DDCMAKE_CXX_STANDARD=17         \
        -DDPARAVIEW_ENABLE_XDMF3=ON      \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
