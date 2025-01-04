sed -i -e 's/\(^MKDLL=.*\)/\1 $(LDFLAGS)/' -e 's/\(^OC_CFLAGS=.*\)/\1 $(LDFLAGS)/' \
-e 's/\(^OC_LDFLAGS=.*\)/\1 $(LDFLAGS)/' Makefile.config.in &&

CFLAGS+=' -ffat-lto-objects'
CXXFLAGS+=' -ffat-lto-objects'

_opts+=" --prefix=/usr \
         --bindir=/usr/bin \
         --mandir=/usr/share/man/man1 \
         --libdir=/usr/lib/ocaml \
         --enable-frame-pointers \
         --enable-flambda"

./configure $_opts &&

make --debug=v world.opt &&

prepare_install &&
make install
