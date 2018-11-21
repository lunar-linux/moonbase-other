sed -i '0,/env python/s//python2/' waf
./waf configure --prefix=/usr --libdir=/usr/lib --htmldir=/usr/share/doc/$MODULE/html $OPTS &&

./waf build &&

prepare_install &&

./waf install
