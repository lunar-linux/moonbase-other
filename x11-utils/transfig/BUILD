(

  export PATH=${PATH}:/usr/X11R6/bin
  sedit 's/usr\/local/usr\/X11/g' Imakefile */Imakefile &&
  xmkmf                      &&
  make Makefiles             &&
  prepare_install            &&
  default_make               &&
  make install.man

) > $C_FIFO 2>&1
