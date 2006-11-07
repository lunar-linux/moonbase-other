(

  export PATH=${PATH}:/usr/X11R6/bin

  xmkmf                            &&

  sedit "s:/usr/include/X11/Xaw3d:/usr/include/X11/Xaw:" Imakefile
  sedit "s:X11/Xaw3d:X11/Xaw:g" SimpleMenu.c

  default_make                     &&
  make install.man

) > $C_FIFO 2>&1
