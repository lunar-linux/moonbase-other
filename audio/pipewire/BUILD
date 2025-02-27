if module_installed ffmpeg; then
  OPTS+=" -D ffmpeg=enabled"
fi &&

OPTS+=" -D session-managers=[] \
        -D udevrulesdir=/usr/lib/udev/rules.d"

default_meson_build &&

if in_depends $MODULE alsa-lib; then
mkdir -p /etc/alsa/conf.d
ln -sft /etc/alsa/conf.d /usr/share/alsa/alsa.conf.d/50-pipewire.conf &&
ln -sft /etc/alsa/conf.d /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf
fi &&

mkdir -p /var/lib/pipewire &&
chown -R pipewire:pipewire /var/lib/pipewire &&

add_priv_group pipewire &&
add_priv_user pipewire -d /var/lib/pipewire -g pipewire
