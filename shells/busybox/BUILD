(

  make defconfig  &&
  make  &&
  prepare_install   &&
  cp busybox /bin   &&
  gather_docs TODO  &&
  cp docs/busybox.1 /usr/share/man/man1/busybox.1

) > $C_FIFO 2>&1
