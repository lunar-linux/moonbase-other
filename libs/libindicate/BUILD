(

  OPTS="--enable-introspection=no" &&

  default_config &&

# Fix the path
  sedit "s:usrbin:usr/bin:g" Makefile libindicate/Makefile &&

  default_make

) > $C_FIFO 2>&1
