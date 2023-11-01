#default_meson_build &&
NOCONFIGURE=1 ./autogen.sh &&

default_build &&
install -Dt /usr/share/egl/egl_external_platform.d -m644 $SCRIPT_DIRECTORY/10_nvidia_wayland.json

