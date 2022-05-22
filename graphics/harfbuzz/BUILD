export CFLAGS="${CFLAGS/-fexceptions/}"
export CXXFLAGS="${CXXFLAGS/-fexceptions/}"

OPTD+=" -D tests=disabled \
        -D benchmark=disabled"

default_meson_build

# This doesn't get installed
install -m 644 src/hb-ft.h /usr/include/harfbuzz/
