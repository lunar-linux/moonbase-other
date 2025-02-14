OPTS+="  --prefix=/usr  \
         --docdir=share \
         --with-boost   \
         --with-bzip2   \
         --with-lzma    \
         --with-sqlite3 \
         --with-os-feature=getrandom \
         --program-suffix=$(lvu version Botan |cut -d"." -f1)
         --with-zlib"

#CXXFLAGS="$CXXFLAGS -O3" ./configure.py $OPTS &&
./configure.py $OPTS &&

default_make
