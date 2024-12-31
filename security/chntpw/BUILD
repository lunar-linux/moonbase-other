CFLAGS+=" -Wno-incompatible-pointer-types"
sed -i 's/^CFLAGS= \(.*\) -m32 $/CFLAGS= \1 -Wno-incompatible-pointer-types/' Makefile &&

make &&

prepare_install &&

# install binaries, don't install static binaries!
install -Dm0755 "${MODULE}" /usr/bin/ &&
install -Dm0755 reged /usr/bin/ &&
install -Dm0755 cpnt /usr/bin/cpnt &&

mkdir -p /usr/share/doc/${MODULE}
for _f in *.txt; do
  install -Dm0644 "${_f}" "/usr/share/doc/${MODULE}/${_f}"
done
