(

  default_config &&

  sedit "s/^CFLAGS = -s -Wall -O2 -ffast-math -fexpensive-optimizations/CFLAGS = $CFLAGS/" src/Makefile src/glpng/Makefile src/astrolib/Makefile	&&
  sedit "s/^CXXFLAGS = -s -Wall -O2 -ffast-math -fexpensive-optimizations/CXXFLAGS = $CFLAGS/" src/Makefile src/glpng/Makefile src/astrolib/Makefile	&&
  default_make

) > $C_FIFO 2>&1
