prepare_install &&

for _executable in clip{menu,menud,del,fsck,ctl}; do
    install -D -m755 "${_executable}" "/usr/bin/${_executable}"
done &&

if module_installed systemd; then
   install -D -m644 init/clipmenud.service /usr/lib/systemd/user/
fi
