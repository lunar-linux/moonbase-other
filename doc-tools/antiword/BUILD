ln -sf Makefile.Linux Makefile &&
make &&

strip antiword  &&
prepare_install &&
make global_install &&

mkdir -p /usr/share/man/man1 &&
install -m644 Docs/antiword.1 /usr/share/man/man1/ &&

mkdir -p /usr/share/antiword &&
for file in Resources/*; do
    install -m644 ${file} /usr/share/antiword
done
