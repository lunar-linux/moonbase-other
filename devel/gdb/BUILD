# Fixes compilation error:
# eval.c: In function 'evaluate_subexp_standard':
# eval.c:1705: error: 'subscript_array' may be used uninitialized in this function
OPTS+=" --disable-werror"

OPTS+=" --host=$BUILD \
        --libdir=$MODULE_PREFIX/lib/gdb \
        --includedir=$MODULE_PREFIX/include/gdb\
        --with-system-gdbinit=/etc/gdb/gdbinit \
    	--with-python=/usr/bin/python3 \
        --with-system-readline \
        --with-system-zlib"

# guile breaks the build
OPTS+=" --without-guile"

default_build
