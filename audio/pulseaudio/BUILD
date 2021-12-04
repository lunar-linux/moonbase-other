# libsamplerate is depreciated.
OPTS+=" -D udevrulesdir=/usr/lib/udev/rules.d  \
        -D alsa=enabled \
        -D samplerate=disabled  \
        -D system_group=pulse \
        -D system_user=pulse "

default_meson_build &&

add_priv_group pulse &&
add_priv_group pulse-access &&
add_priv_user pulse -d /var/run/pulse -g pulse
