
default_config &&
make all &&
make -C po &&
rm -f virt-top/virt-top.1 &&
make -C virt-top virt-top.1 &&

prepare_install &&

make install &&
make -C po install &&
install -D -m 0755 virt-top/virt-top /usr/bin/virt-top &&
install -D -m 0644 virt-top/virt-top.1 /usr/share/man/man1/
