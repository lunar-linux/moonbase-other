cd src &&

# Fix the pkgconfig file's libdir
sedit 's/lib64/lib/g' Makefile &&

make &&

prepare_install &&
make install &&

rm /usr/lib/libbpf.a
