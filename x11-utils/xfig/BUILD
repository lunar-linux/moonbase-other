(

  export PATH=${PATH}:/usr/X11R6/bin

  sedit "s:#define XAW3D:XCOMM #define XAW3D:" Imakefile

  xmkmf               &&
  make clean          &&
  default_make        &&
  make install.man

) > $C_FIFO 2>&1
