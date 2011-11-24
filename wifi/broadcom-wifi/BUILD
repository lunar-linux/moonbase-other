(
  make clean &&
  patch_it $SOURCE2 1 &&
  # Fix for http://patchwork.ozlabs.org/patch/110211/
  if [ `uname -r | cut -d. -f1-2` == 3.2 ]; then
  sedit 's/ndo_set_multicast_list/ndo_set_rx_mode/' src/wl/sys/wl_linux.c
  fi &&
  make &&
  prepare_install &&
  make install &&
  depmod

) > $C_FIFO 2>&1
