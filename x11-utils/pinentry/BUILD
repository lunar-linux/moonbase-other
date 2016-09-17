if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc
fi &&

OPTS+=" --enable-fallback-curses \
        --enable-pinentry-curses \
        --disable-rpath" &&

default_build
