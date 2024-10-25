# tools/configure.py needs Python 2
sed -i 's/^#undef DUK_USE_FASTINT$/#define DUK_USE_FASTINT/' src/duk_config.h &&

# Add missing NEEDED on libm.so
sed -i 's/duktape\.c/& -lm/' Makefile.sharedlibrary &&

CFLAGS="$CFLAGS -DDUK_USE_FASTINT" &&

make -f Makefile.sharedlibrary INSTALL_PREFIX=/usr &&

prepare_install &&
make -f Makefile.sharedlibrary INSTALL_PREFIX=/usr install

