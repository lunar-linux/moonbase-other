(
  make clean &&
  patch_it $SOURCE2 1 &&
  make &&
  prepare_install &&
  install -m644 wl.ko /lib/modules/`uname -r`/kernel/net/wireless/wl.ko &&
  depmod

) > $C_FIFO 2>&1

