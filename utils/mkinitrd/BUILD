(
 
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&
  patch_it $SOURCE4 1 &&
  sedit 's/grub\.conf/menu.lst/' grubby/grubby.c &&
  sedit 's/grub\.conf/menu.lst/' grubby/grubby.8 &&
  sedit '/installkernel/d' Makefile &&
  default_make &&
  mkdir -p $DOCUMENT_DIRECTORY/$MODULE &&
  cp mkinitrd.spec $DOCUMENT_DIRECTORY/$MODULE
 
) > $C_FIFO 2>&1
