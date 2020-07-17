# The install phase gets confused if this is present
# Still the case with version 2.1.0
rm -rf /usr/include/plist/cython &&
NOCONFIGURE=1 ./autogen.sh &&

./configure --prefix=/usr $OPTS &&

sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make
