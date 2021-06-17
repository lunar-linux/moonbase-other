OPTS+=" --enable-glib2 \
        --disable-rpath \
        --disable-tcpwrap \
        --disable-hal-compat \
        --disable-default-build-tests \
        --with-udev-rules-dir=/usr/lib/udev/rules.d"

if ! module_installed systemd; then
  OPTS+=" --disable-systemd-login \
          --disable-systemd-daemon \
          --disable-systemd-journal"
fi

default_config &&
make &&
prepare_install &&
make -j1 install bashcompletiondir=/usr/share/bash-completion/completions &&

add_priv_group pulse &&
add_priv_group pulse-access &&
add_priv_user pulse -d /var/run/pulse -g pulse
