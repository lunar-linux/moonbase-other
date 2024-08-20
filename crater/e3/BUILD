if [ "`arch`" == "x86_64" ]; then
  make EXMODE=_ 64
else
  make EXMODE=_ 32
fi &&

prepare_install &&

make BINDIR=/usr/bin \
     MANDIR=/usr/share/man/man1 \
     PREFIX=/ \
     install
