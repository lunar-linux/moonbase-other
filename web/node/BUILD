# /usr/lib/libnode.so uses malloc_usable_size, which is incompatible with fortification level 3,
# so lets avoid those who like to use faster, better optimizations.
export CFLAGS="${CFLAGS/_FORTIFY_SOURCE=3/_FORTIFY_SOURCE=2}"
export CXXFLAGS="${CXXFLAGS/_FORTIFY_SOURCE=3/_FORTIFY_SOURCE=2}"

# make the directory for modules install
mkdir -p /usr/lib/node_modules &&

./configure --prefix=/usr \
            --shared \
            --shared-cares \
            --without-npm &&

default_make &&

cd /usr/lib &&
ln -s libnode.so.* linode.so
