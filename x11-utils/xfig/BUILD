(

  export PATH=${PATH}:/usr/X11R6/bin

  sedit "s:#define XAW3D:XCOMM #define XAW3D:" Imakefile
  sedit "s:/usr/local/xfig/doc:/usr/share/doc/xfig:" Imakefile
  sedit "s:/usr/local/xfig/man:/usr/man/man1:" Imakefile
  sedit "s:/usr/local:/usr:g" Imakefile

  xmkmf               &&
  make clean          &&
  default_make        &&
  make install.man    &&
  chmod 644 /usr/man/man1/xfig.1x

) > $C_FIFO 2>&1
