export PYTHONDONTWRITEBYTECODE=1 &&

# /usr/lib/libnode.so uses malloc_usable_size, which is incompatible with fortification level 3,
# so lets avoid those who like to use faster, better optimizations.
export CFLAGS="${CFLAGS/_FORTIFY_SOURCE=3/_FORTIFY_SOURCE=2}"
export CXXFLAGS="${CXXFLAGS/_FORTIFY_SOURCE=3/_FORTIFY_SOURCE=2}"
export V=1
export BUILDTYPE=Release

# make the directory for modules install
mkdir -p /usr/lib/node_modules &&

if module_installed npm; then
  OPTS+=" --with-npm"
 else
  OPTS+=" --without-npm"
fi

OPTS+=" --shared --shared-cares --shared-zlib --shared-openssl --shared-http-parser"

./configure --prefix=/usr $OPTS &&

default_make &&

cd /usr/lib &&
ln -sf libnode.so.147 linode.so
