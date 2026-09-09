if in_depends $MODULE opus; then
  CFLAGS="-I/usr/include/opus"
fi &&

OPTS+=" -D doc=disabled \
        -D examples=disabled \
        -D tremor=disabled \
        -D tests=disabled \
        -D glib-checks=enabled \
        -D doc=disabled \
        -D introspection=disabled \
        -D glib-asserts=enabled"

default_meson_build
