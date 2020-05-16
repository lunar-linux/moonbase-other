if module_installed qt5; then
  . /etc/profile.d/qt5.rc
fi &&

OPTS+=" -Dexamples=disabled \
        -Dtremor=disabled \
        -Dtests=disabled \
        -Dglib-checks=enabled \
        -Dglib-asserts=enabled"

default_meson_build
