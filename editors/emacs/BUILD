#combreloc linker options fscks up things here
LDFLAGS=`echo $LDFLAGS | sed "s/-z combreloc//" | sed "s%-Wl,-O1%%"`
default_build
