(

  patch_it $SOURCE2 0 &&
  patch_it $SOURCE3 0 &&

  default_config &&

#To fix usrbin
  sedit "s:usrbin:usr/bin:g" Makefile unique/Makefile &&

  default_make

) > $C_FIFO 2>&1
