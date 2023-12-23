CFLAGS+=' -ffat-lto-objects'
CXXFLAGS+=' -ffat-lto-objects'

_opts+=" --prefix=/usr \
         --bindir=/usr/bin \
         --mandir=/usr/share/man/man1 \
         --libdir=/usr/lib/ocaml \
         --enable-frame-pointers"

./configure $_opts &&

make world.opt &&
prepare_install &&
make install
