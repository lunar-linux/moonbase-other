(

  sedit "s:LFLAGS =:LDFLAGS = -lintl:" src/Makefile.in
  sedit "s:LFLAGS:LDFLAGS:g" src/Makefile.in
  OPTS=$OPTS" --with-docdir=/usr/share/doc --enable-nls --enable-antialiasing"
  default_build

) > $C_FIFO 2>&1
