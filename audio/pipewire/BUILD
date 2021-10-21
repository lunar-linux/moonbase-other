unset LDFLAGS LD CFLAGS CPPFLAGS &&

OPTS+=" -D roc=disabled \
        -D vulkan=disabled \
        -D libcamera=disabled \
        -D session-managers=[] \
        -D udevrulesdir=/usr/lib/udev/rules.d"

CFLAGS+=" -Wformat"

default_meson_build &&

mkdir -p /etc/alsa/conf.d
ln -sft /etc/alsa/conf.d /usr/share/alsa/alsa.conf.d/50-pipewire.conf &&
ln -sft /etc/alsa/conf.d /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf
