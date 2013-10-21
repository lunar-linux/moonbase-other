mkdir BUILD &&
cd BUILD &&
MAKEINFO=no ../configure --build=$BUILD \
    --host=$BUILD                       \
    --enable-languages=c,c++            \
    --prefix=/usr/libexec/mspgcc        \
    --enable-__cxa_atexit               \
    --enable-threads                    \
    --disable-nls                       \
    --enable-target-optspace            \
    --with-gnu-ld                       \
    --with-system-zlib                  \
    --enable-shared                     \
    $OPTS                               &&

make CFLAGS='-O' LIBCFLAGS='-g -O2' LIBCXXFLAGS='-g -O2 -fno-implicit-templates' bootstrap-lean  &&
prepare_install &&
make install
