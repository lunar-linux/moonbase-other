autoreconf -fvi &&

if module_installed qt6-base; then
source /etc/profile.d/qt6.rc
OPTS+=" --enable-pinentry-qt"
fi &&

OPTS+=" --enable-fallback-curses \
        --enable-pinentry-curses \
        --disable-rpath"

# circular depend
if module_installed gcr ; then
   OPTS+=" --enable-pinentry-gnome3"
else
   OPTS+=" --disable-pinentry-gnome3"
fi

default_build
