(

  cp Config.h Config.h.orig
  patch_it $SCRIPT_DIRECTORY/busybox.patch.bz2 0 &&

  sedit "s/DOLFS = false/DOLFS = true/" Makefile
  sedit "s/DOSTATIC = false/DOSTATIC = true/" Makefile

  make             &&
  prepare_install  &&
  cp      busybox  /sbin/busybox_static


) > $C_FIFO 2>&1
