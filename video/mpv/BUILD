install -m755 $SOURCE_CACHE/$SOURCE2 waf &&

./waf configure --prefix=/usr \
                --confdir=/etc/mpv \
                --color=yes \
                --enable-libmpv-shared \
                --enable-gl \
                --enable-drm \
                --enable-cdda \
                --enable-alsa \
                --enable-zlib \
                --disable-rpi \
                --disable-uwp \
                --disable-test \
                --disable-wasapi \
                --disable-rsound \
                --disable-vulkan \
                --disable-android \
                --disable-opensles \
                --disable-oss-audio \
                --disable-coreaudio \
                --disable-audiounit \
                --disable-rubberband \
                --disable-vapoursynth \
                --disable-debug-build \
                --disable-static-build \
                --disable-vapoursynth-lazy

./waf build &&

prepare_install &&

./waf install &&

install -m644 $SCRIPT_DIRECTORY/mpv.desktop /usr/share/applications/mpv.desktop &&
install -m644 $SCRIPT_DIRECTORY/mpv.png /usr/share/icons/hicolor/128x128/apps/mpv.png
