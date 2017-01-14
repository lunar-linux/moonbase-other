# Obviously if bluez4 we want to disable bluez-5. However since bluez-5 provides a
# compatibility layer for bluez4 we want both enabled if bluez-5 is installed.
if in_depends $MODULE bluez; then
  OPTS+=" --enable-bluez4 --disable-bluez5"
elif in_depends $MODULE bluez-5; then
  OPTS+=" --enable-bluez5 --enable-bluez4"
fi &&

if module_installed systemd; then
  OPTS+=" --with-udev-rules-dir=/usr/lib/udev/rules.d"
fi &&

OPTS+=" --libexecdir=/usr/lib" &&

OPTS+=" --disable-hal-compat \
        --disable-tcpwrap \
        --disable-rpath \
        --disable-default-build-tests" &&

default_config &&
make &&
prepare_install &&
make -j1 install bashcompletiondir=/usr/share/bash-completion/completions &&

add_priv_group pulse &&
add_priv_group pulse-access &&
add_priv_user pulse -d /var/run/pulse -g pulse
