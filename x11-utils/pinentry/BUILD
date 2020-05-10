if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
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
