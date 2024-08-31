if module_installed qt5; then
  . /etc/profile.d/qt5.rc
fi &&

if in_depends $MODULE opus; then
  CFLAGS="-I/usr/include/opus"
fi &&

OPTS+=" -D doc=disabled \
        -D examples=disabled \
        -D tremor=disabled \
        -D tests=disabled \
        -D glib-checks=enabled \
        -D introspection=enabled \
        -D glib-asserts=enabled"

default_meson_build
