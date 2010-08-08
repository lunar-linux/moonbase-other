(

  cd squashfs-tools && 

  make &&
  prepare_install &&
  install -m 755 -s mksquashfs unsquashfs /usr/bin &&
  gather_docs PERFORMANCE.README

) > $C_FIFO 2>&1
