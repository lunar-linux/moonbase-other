(

  export PATH=${PATH}:/usr/X11R6/bin
  patch_it $SOURCE2 1              &&
  sedit 's/usr\/local/usr\/X11/g' Imakefile */Imakefile &&
  xmkmf -a                         &&
  make                             &&
  prepare_install                  &&
  make install                     &&
  make install.man

) > $C_FIFO 2>&1
