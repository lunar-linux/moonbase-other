mkdir BUILD &&
cd BUILD &&

sedit 's/trap 0/trap "" 0/' ../configure &&

LANGUAGES=${LANGUAGES:=c++} &&

../configure --host=$BUILD \
             --enable-languages=$LANGUAGES \
             --prefix=${MODULE_PREFIX} \
             --infodir=${MODULE_PREFIX}/share/info \
             --mandir=${MODULE_PREFIX}/share/man \
             --enable-__cxa_atexit    \
             --enable-threads         \
             --disable-nls            \
             --enable-target-optspace \
             --with-gnu-ld            \
             --with-system-zlib       \
             --enable-shared         &&

make CFLAGS='-O' LIBCFLAGS='-g -O2' LIBCXXFLAGS='-g -O2 -fno-implicit-templates' bootstrap-lean &&
prepare_install &&
make install
