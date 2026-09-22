source /etc/profile.d/qt6.rc

OPTS+=" --enable-fallback-curses \
        --enable-pinentry-curses \
        --disable-rpath"

# circular depend
if module_installed gcr ; then
   OPTS+=" --enable-pinentry-gnome3"
else
   OPTS+=" --disable-pinentry-gnome3"
fi

export CXXFLAGS="$CXXFLAGS -std=gnu++17"

default_build
