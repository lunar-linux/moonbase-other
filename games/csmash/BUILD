(

  ./configure  --prefix=/usr                  \
               --bindir=/usr/games            &&
  sedit  "s/-lvorbis/-lvorbis -lvorbisfile/"  \
         makefile                             &&
  sedit '/#define HAVE_LIBZ 1/d' config.h     &&
  make                                        &&
  prepare_install                             &&
  make    install

) > $C_FIFO 2>&1
