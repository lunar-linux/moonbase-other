(

  sedit  "s/local\///"    timidity/config.h             &&

  ./configure  --prefix=/usr                            \
               --bindir=/usr/bin                        \
	       --sbindir=/usr/sbin                      \
	       --datadir=/usr/share                     \
               --infodir=/usr/share/info                \
               --mandir=/usr/share/man                  \
               --disable-sdltest                        &&
  make                                                  &&
  prepare_install                                       &&
  make    install                                       &&
  cp    -r  timidity  /usr/lib

) > $C_FIFO 2>&1
