(

  ./configure  --prefix=/usr                  \
               --bindir=/usr/games            &&
  sedit  "s/-lvorbis/-lvorbis -lvorbisfile/"  \
         makefile                             &&
  sedit '/#define HAVE_LIBZ 1/d' config.h     &&

  default_make

) > $C_FIFO 2>&1
