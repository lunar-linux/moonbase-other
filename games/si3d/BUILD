(

  sedit "s/-mcpu=pentium -march=pentium/$CFLAGS/" Makefile
  sedit "s:INSTDIR = /usr/share:INSTDIR = /usr/share/games:" Makefile 

  make                       &&
  prepare_install            &&
  make INSTBINDIR=/usr/games  \
       install

) > $C_FIFO 2>&1

