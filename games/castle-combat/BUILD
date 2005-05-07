(

  # don't overwrite the SDL_net.h from the SDL_net module.
  sedit 's:SDL_net::' src/Makefile.in &&
  
  ./configure  --prefix=/usr               \
               --bindir=/usr/games         \
	       --datadir=/usr/share/games &&

  default_make

) > $C_FIFO 2>&1
