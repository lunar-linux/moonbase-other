if in_depends $MODULE python; then
    # use bootstrap so we can use their supplied bjam/b2.
    PY_VER=`lvu version python|cut -d. -f1-2` &&
    ./bootstrap.sh --with-toolset=gcc --with-icu --with-python=/usr/bin/python3 --with-python-version=$PY_VER --with-python-root=/usr/lib/python$PY_VER &&
   PY_INCLD=-I/usr/include/python${PY_VER}m
  else
    ./bootstrap.sh --with-toolset=gcc --with-icu &&
   PY_INCLD=""
fi &&

export EXPAT_INCLUDE=/usr/include/ &&
export EXPAT_LIBPATH=/usr/lib/ &&

./b2 -q ${MAKES:+-j$MAKES} \
        threading=multi \
        runtime-link=shared \
        link=shared \
        variant=release \
        debug-symbols=off \
        optimization=speed \
        toolset=gcc \
        --prefix=/usr \
        --layout=system\
        --includedir="/usr/include" \
        --libdir="/usr/lib" \
        cflags="$CFLAGS -fPIC $PY_INCLD" \
        cxxflags="$CXXFLAGS -std=c++14 -fPIC -fno-strict-aliasing" \
        $OPTS &&

prepare_install &&

./b2 -q ${MAKES:+-j$MAKES} \
        threading=multi \
        runtime-link=shared \
        link=shared \
        variant=release \
        debug-symbols=off \
        optimization=speed \
        toolset=gcc \
        --prefix=/usr \
        --layout=system \
        --includedir="/usr/include" \
        --libdir="/usr/lib" \
        cflags="$CFLAGS -fPIC $PY_INCLD" \
        cxxflags="$CXXFLAGS -std=c++14 -fPIC -fno-strict-aliasing" \
        $OPTS \
        install &&

rm /usr/lib/libboost_*.a
