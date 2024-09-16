sedit '1i #include <stdlib.h>' src/aalib.c &&

autoreconf -fi &&

LDFLAGS=$(echo $LDFLAGS | sed "s/-z combreloc//") &&

default_build
