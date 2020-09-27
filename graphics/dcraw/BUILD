gcc $CFLAGS $LDFLAGS -O4 -o dcraw dcraw.c \
    -Wall -Wno-unused-result -Wno-array-bounds \
    -lm -ljasper -ljpeg -llcms2 &&

prepare_install &&

cp -a dcraw /usr/bin &&
cp -a dcraw.1 /usr/man/man1/
