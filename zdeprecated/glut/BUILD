(
  export PATH=${PATH}:/usr/X11R6/bin
  cp linux/Glut.cf Glut.cf                                      &&
  sedit "s:\$(TOP)/../lib/libMesa:/usr/X11R6/lib/lib:" Glut.cf  &&
  imake -DUseInstalled -I/usr/X11R6/lib/X11/config -DTOPDIR=. &&
  xmkmf -a                                       &&
  cp linux/Makefile lib/glut/Makefile                           &&
  sedit "s:,libglut.so.3:,libglut.so.3,-L/usr/X11R6/lib,-lX11,-lGL,-lGLU,-lXi,-lXmu:" lib/glut/Makefile                                         &&
  sedit "s:-O2 -m486: $CFLAGS:g" lib/glut/Makefile              &&
  cd     lib/glut                                               &&
  make                                                          &&
  prepare_install                                               &&
  ln     -sf libglut.so.3.7  libglut.so.3                       &&
  ln     -sf libglut.so.3.7  libglut.so                         &&
  cp     -d libglut*        /usr/lib                            &&
  cp     $SOURCE_DIRECTORY/include/GL/glut.h  /usr/include/GL

) > $C_FIFO 2>&1
