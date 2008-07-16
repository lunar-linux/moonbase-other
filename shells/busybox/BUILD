(

  make defconfig &&

  # NOTE: tchan added this hack for busybox-1.10.2, and should be removed when busybox devs fix it...
  sedit "s/CONFIG_BRCTL=y/# CONFIG_BRCTL is not set/" .config &&
  sedit "s/CONFIG_FEATURE_BRCTL_FANCY=y/# CONFIG_FEATURE_BRCTL_FANCY is not set/" .config &&
  sedit "s/CONFIG_FEATURE_BRCTL_SHOW=y/# CONFIG_FEATURE_BRCTL_SHOW is not set/" .config &&
  # NOTE: tchan added this hack for busybox-1.11.1, and should be removed when busybox devs fix it...
  sedit "s/CONFIG_INOTIFYD=y/# CONFIG_INOTIFYD is not set/" .config &&

  make &&
  make doc &&
  prepare_install &&
  cp busybox /bin &&
  gather_docs TODO &&
  cp docs/BusyBox.1 /usr/share/man/man1/busybox.1

) > $C_FIFO 2>&1
