autoupdate -fv &&

rm -r lib/{libebml,libmatroska} &&

if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc &&
  OPTS+=" --with-qmake=/usr/bin/qmake-qt5 \
          --enable-qt5"
else
  OPTS+=" --disable-qt5"
  if in_depends $MODULE qt6; then
    . /etc/profile.d/qt5.rc &&
    OPTS+=" --with-qmake=/usr/bin/qmake-qt6 \
            --enable-qt6"
  else
    OPTS+=" --disable-qt6"
    message "${PROBLEM_COLOR}Module qt5 or qt6 are not installed!${DEFAULT_COLOR}"
    exit 1
  fi
fi

OPTS+=" --with-boost=/usr  \
        --with-boost-libdir=/usr/lib \
        --with-boost=yes \
        --disable-update-check"

default_config &&
rake V=1 &&

prepare_install &&
rake install
