(

  #Temporary fix to work around telepathy-idle using bad macros,
  #and glibc breaking because of it.

  sedit 's:__USE_GNU:_GNU_SOURCE:g' src/idle-connection.c
  sedit 's:__USE_GNU:_GNU_SOURCE:g' src/idle-parser.c

  default_build

) > $C_FIFO 2>&1
