# use bootstrap so we can use their supplied bjam/b2.
./bootstrap.sh --with-toolset=gcc --with-icu &&

export EXPAT_INCLUDE=/usr/include/ &&
export EXPAT_LIBPATH=/usr/lib/ &&

./b2 -q ${MAKES:+-j$MAKES} \
        threading=single,multi \
        runtime-link=shared \
        link=shared \
        variant=release \
        debug-symbols=off \
        optimization=speed \
        toolset=gcc \
        --prefix=/usr \
        --layout=tagged \
        --includedir="/usr/include" \
        --libdir="/usr/lib" \
        cxxflags=-fno-strict-aliasing \
        cflags="$CFLAGS -fPIC" \
        $OPTS &&

prepare_install &&

./b2 -q ${MAKES:+-j$MAKES} \
        threading=single,multi \
        runtime-link=shared \
        link=shared \
        variant=release \
        debug-symbols=off \
        optimization=speed \
        toolset=gcc \
        --prefix=/usr \
        --layout=tagged \
        --includedir="/usr/include" \
        --libdir="/usr/lib" \
        cxxflags=-fno-strict-aliasing \
        cflags="$CFLAGS -fPIC" \
        $OPTS \
        install &&

rm /usr/lib/libboost_*.a
