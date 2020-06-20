# The install phase gets confused if this is present
# Still the case with version 2.1.0
rm -rf /usr/include/plist/cython &&

PYTHON=/usr/bin/python2 ./autogen.sh --prefix=/usr $OPTS &&

default_make
