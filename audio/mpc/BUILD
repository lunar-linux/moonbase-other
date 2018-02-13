meson --prefix /usr . build &&

cd build
ninja &&
prepare_install &&
ninja install &&

install -Dm644 ../contrib/mpc-completion.bash /usr/share/bash-completion/completions/mpc
