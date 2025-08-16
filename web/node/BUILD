# /usr/lib/libnode.so uses malloc_usable_size, which is incompatible with fortification level 3,
# so lets avoid those who like to use faster, better optimizations.
export CFLAGS="${CFLAGS/_FORTIFY_SOURCE=3/_FORTIFY_SOURCE=2}"
export CXXFLAGS="${CXXFLAGS/_FORTIFY_SOURCE=3/_FORTIFY_SOURCE=2}"
export V=1
export BUILDTYPE=Release

# make the directory for modules install
mkdir -p /usr/lib/node_modules &&

OPTS+=" --shared --shared-cares --without-npm --shared-zlib --shared-openssl"

./configure --prefix=/usr $OPTS &&

default_make &&

cd /usr/lib &&
ln -s libnode.so.137 linode.so
