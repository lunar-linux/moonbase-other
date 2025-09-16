
OPTS+=" --enable-xcb \
        --enable-xvideo \
        --enable-avcodec \
        --enable-ncurses \
        --enable-realrtsp \
        --disable-sid \
        --disable-rpath \
        --disable-libplacebo \
        --disable-chromaprint \
        --disable-libplacebo \
        --disable-opencv \
        --disable-rpath \
        --disable-update-check"

default_config &&

# prevent excessive overlinking due to libtool
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make &&

sedit "s:Categories=:Categories=Multimedia;:" /usr/share/applications/vlc.desktop &&

if in_depends $MODULE qt5; then
  sedit "s:/usr/bin/vlc:/usr/bin/qvlc:" /usr/share/applications/vlc.desktop
fi &&

# remove unneeded/unused static library
rm -fv "/usr/lib/vlc/libcompat.a"

# remove utils script that is incompatible with gnome >= 3
rm -fv "/usr/share/vlc/utils/gnome-vlc-default.sh"

# remove developer example project for libvlc
rm -frv "/usr/share/doc/vlc/libvlc/"

# remove unneeded/compiled-in images
rm -fv "/usr/share/vlc/vlc.ico"
find "/usr/share/icons/hicolor/" -type f ! -iname "vlc.png" -delete

# delete plugin registry, we will create it dynamically with an ALPM hook as part of the libvlc package
rm -fv "/usr/lib/vlc/plugins/plugins.dat"

# delete leftover libtool stuff to properly empty plugin directories
find "/usr/lib/vlc/" -type f -iname "*.la" -delete

