OPTS+="  --prefix=/usr  \
         --docdir=share \
         --with-boost   \
         --with-bzip2   \
         --with-lzma    \
         --with-sqlite3 \
         --with-os-feature \
         --without-sphinx \
         --without-documentation \
         --with-zlib"

CXXFLAGS="$CXXFLAGS -O3" ./configure.py $OPTS &&

default_make
