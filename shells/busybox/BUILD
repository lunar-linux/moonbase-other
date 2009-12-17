(

  make defconfig &&

  # NOTE: tchan added this hack for busybox-1.14.1, and should be removed when busybox devs fix it...
  # sedit "s/CONFIG_IONICE=y/# CONFIG_IONICE is not set/" .config &&
  sedit "s/CONFIG_ACPID=y/# CONFIG_ACPID is not set/" .config &&
  sedit "s/CONFIG_FEATURE_ACPID_COMPAT=y/# CONFIG_FEATURE_ACPID_COMPAT is not set/" .config &&

  make &&
  make doc &&
  prepare_install &&
  cp busybox /bin &&
  gather_docs TODO &&
  cp docs/BusyBox.1 /usr/share/man/man1/busybox.1

) > $C_FIFO 2>&1
