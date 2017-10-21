install -m755 $SOURCE_CACHE/$SOURCE2 waf &&

./waf configure --prefix=/usr \
                --confdir=/etc/mpv \
                --enable-libmpv-shared \
                --enable-shm \
                --enable-cdda \
                --disable-rsound \
                --disable-opensles \
                --disable-oss-audio \
                --disable-rubberband \
                --disable-vapoursynth

./waf build &&

prepare_install &&

./waf install &&

install -m644 $SCRIPT_DIRECTORY/mpv.desktop /usr/share/applications/mpv.desktop &&
install -m644 $SCRIPT_DIRECTORY/mpv.png /usr/share/icons/hicolor/128x128/apps/mpv.png
