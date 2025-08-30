export CFLAGS+=" -Wno-incompatible-pointer-types -Wno-int-conversion"
export CXXFLAGS+=" -Wno-incompatible-pointer-types -Wno-int-conversion"

OPTS+=" -DWITH_SERVER=ON \
        -DWITH_MANPAGES=OFF \
        -DWITH_FFMPEG=ON \
        -DWITH_SWSCALE=ON \
        -DWITH_CHANNELS=ON \
        -DWITH_PULSE=ON \
        -DWITH_DSP_FFMPEG=ON \
        -DWITH_CLIENT_CHANNELS=ON \
        -DWITH_SERVER_CHANNELS=ON \
        -DCHANNEL_URBDRC_CLIENT=ON \
        -DWITH_CLIENT_SDL3=OFF \
        -DPROXY_PLUGINDIR=/usr/lib/freerdp2/server/proxy/plugins \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DBUILD_TESTING=OFF \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
