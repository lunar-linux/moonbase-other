(
 
  patch_it $SOURCE2 1 &&
  sedit 's/grub\.conf/menu.lst/' grubby/grubby.c &&
  sedit 's/grub\.conf/menu.lst/' grubby/grubby.8 &&
  default_make &&
  mkdir -p $DOCUMENT_DIRECTORY/$MODULE &&
  cp mkinitrd.spec $DOCUMENT_DIRECTORY/$MODULE
 
) > $C_FIFO 2>&1
