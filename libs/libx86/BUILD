CFLAGS+=" $CFLAGS -fno-delete-null-pointer-checks" &&

if [ `arch` = "x86_64" ] || [ `arch` = "native" ]; then
    make BACKEND=x86emu
  else
    make
fi &&

prepare_install &&
make install
