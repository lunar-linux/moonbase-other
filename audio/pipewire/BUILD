unset LDFLAGS LD CFLAGS CPPFLAGS &&

OPTS+=" -Dvulkan=false \
	-D docs=true \
        -D man=true"

CFLAGS+=" -Wformat"

default_meson_build &&

mkdir -p etc/alsa/conf.d
ln -st /etc/alsa/conf.d /usr/share/alsa/alsa.conf.d/50-pipewire.conf &&
ln -st /etc/alsa/conf.d /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf
