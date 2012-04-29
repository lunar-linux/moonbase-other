(


  mkdir -p build  &&

# This is what the old source used and does not work now.
#  gcc -o dcraw -O4 dcraw.c -lm -ljpeg -llcms  &&
  
# This is so you can see what flags were used to build with in lvu compile dcraw
  echo $CFLAGS

  gcc $CFLAGS -O3 -o build/dcraw dcraw.c \
        -Wall -Wno-unused-result -Wno-array-bounds \
        -lm -ljpeg -llcms -s 
 

  prepare_install              &&
  cp -a build/dcraw   /usr/bin       &&
  cp -a dcraw.1 /usr/man/man1/ 

) > $C_FIFO 2>&1
