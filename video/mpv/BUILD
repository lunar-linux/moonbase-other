install -m755 $SOURCE_CACHE/$SOURCE2 waf &&

./waf configure --prefix=/usr \
                --confdir=/etc/mpv \
                --color=yes \
                --enable-gl \
                --enable-drm \
                --enable-cdda \
                --enable-alsa \
                --enable-zlib \
                --enable-libmpv-shared \
                --disable-rpi \
                --disable-uwp \
                --disable-test \
                --disable-wasapi \
                --disable-vulkan \
                --disable-android \
                --disable-opensles \
                --disable-coreaudio \
                --disable-audiounit \
                --disable-build-date \
                --disable-pdf-build \
                --disable-html-build \
                --disable-debug-build \
                --disable-static-build \
                --disable-libmpv-static \
                --disable-clang-database

./waf build &&

prepare_install &&

./waf install &&

install -m644 $SCRIPT_DIRECTORY/mpv.desktop /usr/share/applications/mpv.desktop &&
install -m644 $SCRIPT_DIRECTORY/mpv.png /usr/share/icons/hicolor/128x128/apps/mpv.png
