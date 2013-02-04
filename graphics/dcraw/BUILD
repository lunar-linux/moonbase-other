(

  mkdir -p build  &&

# This is so you can see what flags were used to build with in lvu compile dcraw
  echo $CFLAGS &&

  gcc $CFLAGS -O4 -o dcraw dcraw.c \
        -Wall -Wno-unused-result -Wno-array-bounds \
        -lm -ljasper -ljpeg -llcms &&

  prepare_install              &&
  cp -a dcraw   /usr/bin       &&
  cp -a dcraw.1 /usr/man/man1/

) > $C_FIFO 2>&1
