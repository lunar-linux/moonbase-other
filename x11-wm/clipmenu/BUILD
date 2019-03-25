prepare_install &&

install -D -m755 clipdel /usr/bin/ &&
install -D -m755 clipmenu /usr/bin/ &&
install -D -m755 clipmenud /usr/bin/clipmenud &&

if module_installed systemd; then
   install -D -m755 init/clipmenud.service /usr/lib/systemd/user/
fi
