(

  export PATH=${PATH}:/usr/X11R6/bin

  sedit "s:#define XAW3D:XCOMM #define XAW3D:" Imakefile

# Fixes some pathing so things go where they normally should.
  sedit "s:/usr/local/include:/usr/include:g" Imakefile
  sedit "s:/usr/local/lib:/usr/lib:g" Imakefile
  sedit "s:/usr/local/include/X11:/usr/include/X11:g" Imakefile
  sedit "s:/usr/local/xfig/doc:/usr/share/doc/xfig:g" Imakefile
  sedit "s:/usr/local/xfig/man:/usr/share/man/xfig:g" Imakefile

  xmkmf               &&
  make clean          &&
  default_make        &&
  make install.man

) > $C_FIFO 2>&1
