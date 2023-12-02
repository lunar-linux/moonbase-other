make build &&
export OCAMLFIND_DESTDIR="$(ocamlfind printconf destdir)" &&

prepare_install &&
install -Ddm755 "${OCAMLFIND_DESTDIR}" &&
make install
