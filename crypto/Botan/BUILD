OPTS+="  --prefix=/usr  \
         --docdir=share \
         --with-boost   \
         --with-bzip2   \
         --with-lzma    \
         --with-openssl \
         --with-sqlite3 \
         --with-zlib"

CXXFLAGS="$CXXFLAGS -O3" ./configure.py $OPTS &&

default_make
