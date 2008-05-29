(

  make defconfig &&
  sedit "s/# CONFIG_STATIC is not set/CONFIG_STATIC=y/" .config &&
  sedit "s/-Wl,--gc-sections//" scripts/trylink &&
  sedit "/^#error Aborting compilation./d" applets/applets.c &&
  sedit "s/CONFIG_BRCTL=y/# CONFIG_BRCTL is not set/" .config &&
  make             &&
  prepare_install  &&
  cp -p busybox /sbin/busybox_static

) > $C_FIFO 2>&1
