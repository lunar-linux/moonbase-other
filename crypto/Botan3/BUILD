OPTS+="  --prefix=/usr  \
         --docdir=share \
         --with-boost   \
         --with-bzip2   \
         --with-lzma    \
         --with-sqlite3 \
         --with-os-feature=getrandom,getentropy \
         --with-zlib"

CXXFLAGS="$CXXFLAGS -O3" ./configure.py $OPTS &&

default_make
