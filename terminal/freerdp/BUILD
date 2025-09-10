OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DWITH_SERVER=ON \
        -DWITH_MANPAGES=OFF \
        -DWITH_FFMPEG=ON \
        -DWITH_SWSCALE=ON \
        -DWITH_CHANNELS=ON \
        -DWITH_DSP_FFMPEG=ON \
        -DWITH_CLIENT_CHANNELS=ON \
        -DWITH_SERVER_CHANNELS=ON \
        -DCHANNEL_URBDRC_CLIENT=ON \
        -DRDTK_FORCE_STATIC_BUILD=ON \
        -DUWAC_FORCE_STATIC_BUILD=ON \
        -DWITH_BINARY_VERSIONING=ON \
        -DWITH_CLIENT_SDL3=OFF \
        -DPROXY_PLUGINDIR=/usr/lib/freerdp/server/proxy/plugins \
        -Wno-dev"


cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
