(

  sedit "s:/usr/local/share/povray-3.5:/usr/share/povray-3.5:g" povray.ini &&
	sedit "s:-O3 -mcpu=i586 -march=i586:$CFLAGS:g" src/Makefile.* &&
	sedit "s:NOMULTICHAR) -O3:NOMULTICHAR) $CFLAGS:g" src/Makefile.* &&
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
	default_build

) > $C_FIFO 2>&1
