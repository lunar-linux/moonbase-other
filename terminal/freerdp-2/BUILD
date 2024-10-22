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
        -DPROXY_PLUGINDIR=/usr/lib/freerdp2/server/proxy/plugins"

default_cmake_build
