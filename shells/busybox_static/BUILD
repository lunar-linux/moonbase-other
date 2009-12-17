(

  make defconfig &&

  sedit "s/# CONFIG_STATIC is not set/CONFIG_STATIC=y/" .config &&
  sedit "s/-Wl,--gc-sections//" scripts/trylink &&
  sedit "/^#error Aborting compilation./d" applets/applets.c &&
  # NOTE: tchan added this hack for busybox-1.14.1, and should be removed when busybox devs fix it...
  # sedit "s/CONFIG_IONICE=y/# CONFIG_IONICE is not set/" .config &&
  sedit "s/CONFIG_ACPID=y/# CONFIG_ACPID is not set/" .config &&
  sedit "s/CONFIG_FEATURE_ACPID_COMPAT=y/# CONFIG_FEATURE_ACPID_COMPAT is not set/" .config &&

  make             &&
  prepare_install  &&
  cp -p busybox /sbin/busybox_static

) > $C_FIFO 2>&1
