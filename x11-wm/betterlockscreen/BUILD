prepare_install &&

install -Dm 755 "${MODULE}" -t /usr/bin/ &&

if module_installed systemd; then
   install -Dm 644 system/"${MODULE}@.service" -t /usr/lib/systemd/system/
fi &&

mkdir -p /usr/share/doc/$MODULE/examples &&
install -Dm 644 examples/"${MODULE}rc" -t /usr/share/doc/${MODULE}/examples/
