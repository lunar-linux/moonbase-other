if module_installed qt5; then
  . /etc/profile.d/qt5.rc
fi &&

OPTS+=" -D doc=disabled \
        -D examples=disabled \
        -D tremor=disabled \
        -D tests=disabled \
        -D glib-checks=enabled \
        -D glib-asserts=enabled"

default_meson_build
