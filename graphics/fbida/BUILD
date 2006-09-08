(

# else make fails on unrecognized command line option "-Wno-pointer-sign"
  sedit "s:-Wno-pointer-sign: :" GNUmakefile

# so things DO NOT go in /usr/local
  prefix="/usr"
  export prefix

# and well, there ya go
  default_make

) > $C_FIFO 2>&1
