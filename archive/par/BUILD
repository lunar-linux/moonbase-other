(

  sedit "s/-g -W -Wall -Wno-unused -O3/-W -Wall -Wno-unused $CFLAGS/" Makefile &&
  sedit "s/\${HOME}/\/usr/" Makefile &&
  sedit "s/\$(CC)/\$(CC) $LDFLAGS/" Makefile &&
  default_make 

) > $C_FIFO 2>&1
