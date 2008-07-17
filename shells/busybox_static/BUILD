(

  make defconfig &&

  sedit "s/# CONFIG_STATIC is not set/CONFIG_STATIC=y/" .config &&
  sedit "s/-Wl,--gc-sections//" scripts/trylink &&
  sedit "/^#error Aborting compilation./d" applets/applets.c &&
  # NOTE: tchan added this hack for busybox-1.10.2, and should be removed when busybox devs fix it...
  sedit "s/CONFIG_BRCTL=y/# CONFIG_BRCTL is not set/" .config &&
  sedit "s/CONFIG_FEATURE_BRCTL_FANCY=y/# CONFIG_FEATURE_BRCTL_FANCY is not set/" .config &&
  sedit "s/CONFIG_FEATURE_BRCTL_SHOW=y/# CONFIG_FEATURE_BRCTL_SHOW is not set/" .config &&
  # NOTE: tchan added this hack for busybox-1.11.1, and should be removed when busybox devs fix it...
  sedit "s/CONFIG_INOTIFYD=y/# CONFIG_INOTIFYD is not set/" .config &&

  make             &&
  prepare_install  &&
  cp -p busybox /sbin/busybox_static

) > $C_FIFO 2>&1
