(

  OPTS="--without-boost-python --enable-libpst-shared --disable-python" &&

  sedit "s:sem_init],rt):sem_init], [ pthread pthreads thread threads ] ):" configure.in &&
  sed -i "1i ACLOCAL_AMFLAGS = -I m4" Makefile.am &&

  default_build

) > $C_FIFO 2>&1
