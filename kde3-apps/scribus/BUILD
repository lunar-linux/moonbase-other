(

  rm -f /usr/X11R6/include/zlib.h 

  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}  \
               --disable-debug                  \
               $OPTS                           &&

  default_make

) > $C_FIFO 2>&1
