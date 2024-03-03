# Swig fix
sedit "36i %nodefaultctor Settings;" xbmc/interfaces/swig/AddonModuleXbmcaddon.i &&

CXXFLAGS+=' -Wno-error=restrict'

OPTS+=" -DUSE_LTO=OFF \
        -DENABLE_GOLD=OFF \
        -DAPP_RENDER_SYSTEM=gl \
        -DENABLE_EVENTCLIENTS=ON \
        -DENABLE_MDNS=OFF \
        -DENABLE_INCLUDEWHATYOUUSE=OFF \
        -DENABLE_SNDIO=OFF \
        -DENABLE_CCACHE=OFF \
        -DENABLE_INTERNAL_FFMPEG=ON \
        -DENABLE_INTERNAL_RapidJSON=OFF \
        -DENABLE_INTERNAL_UDFREAD=OFF \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DCMAKE_BUILD_TYPE=RELEASE\
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DENABLE_INTERNAL_SPDLOG=ON \
        -DENABLE_INTERNAL_FMT=ON \
        -Wno-dev \
        -DVERBOSE=ON"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&
prepare_install &&

cmake --install $MODULE-$VERSION
