# /usr/lib/libnode.so uses malloc_usable_size, which is incompatible with fortification level 3,
# so lets avoid those who like to use faster, better optimizations.
export CFLAGS="${CFLAGS/_FORTIFY_SOURCE=3/_FORTIFY_SOURCE=2}"
export CXXFLAGS="${CXXFLAGS/_FORTIFY_SOURCE=3/_FORTIFY_SOURCE=2}"
export V=1
export BUILDTYPE=Release
#https://gcc.gnu.org/bugzilla/show_bug.cgi?id=116057
export CXXFLAGS="-fno-tree-vectorize"

# Avoid writing a depfile, not useful
sed -i -e "/DEPFLAGS =/d" tools/gyp/pylib/gyp/generator/make.py &&
sed -i -e "/'-O3'/d" common.gypi node.gypi &&

# make the directory for modules install
mkdir -p /usr/lib/node_modules &&

OPTS+=" --shared --shared-cares --shared-sqlite --without-npm --shared-zlib --shared-openssl"

./configure --prefix=/usr $OPTS &&

default_make &&

cd /usr/lib &&
ln -s libnode.so.131 linode.so
