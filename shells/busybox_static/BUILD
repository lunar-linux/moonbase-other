(

  make defconfig &&
  sedit "s/# CONFIG_STATIC is not set/CONFIG_STATIC=y/" .config &&
  sedit "s/-Wl,--gc-sections//" scripts/trylink &&
  sedit "/^#error Aborting compilation./d" applets/applets.c &&
  make             &&
  prepare_install  &&
  cp      busybox  /sbin/busybox_static


) > $C_FIFO 2>&1
