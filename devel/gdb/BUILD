# Fixes compilation error:
# eval.c: In function 'evaluate_subexp_standard':
# eval.c:1705: error: 'subscript_array' may be used uninitialized in this function
OPTS+=" --disable-werror"

OPTS+=" --prefix=/usr \
        --host=$BUILD \
        --libdir=$MODULE_PREFIX/lib/gdb \
        --includedir=$MODULE_PREFIX/include/gdb\
        --with-system-gdbinit=/etc/gdb/gdbinit \
        --with-python=/usr/bin/python \
        --with-system-readline \
        --with-system-zlib"

# guile breaks the build
OPTS+=" --without-guile"

mkdir -p build &&
cd build &&
../configure $OPTS &&

default_make
