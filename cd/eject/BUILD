(

  # 2.6 kernel support
  patch_it $SCRIPT_DIRECTORY/eject-2.0.13-kernel25-support.patch 0 &&

  sedit "s:-I/usr/src/linux -I/usr/src/linux/include::" Makefile.in &&
  default_build &&

  gather_docs PROBLEMS PORTING

) > $C_FIFO 2>&1
