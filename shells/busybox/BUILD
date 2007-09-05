(

  make defconfig &&

  # NOTE: tchan added this hack for busybox-1.7.0, and should be removed when busybox devs fix it...
  sedit "s/CONFIG_RUNSV=y/# CONFIG_RUNSV is not set/" .config &&

  make &&
  make doc &&
  prepare_install &&
  cp busybox /bin &&
  gather_docs TODO &&
  cp docs/BusyBox.1 /usr/share/man/man1/busybox.1

) > $C_FIFO 2>&1

#  cat busybox.links |
#  while read LINKNAME; do
#    (chroot $TARGET_DIR/ /bin/busybox ln -s /bin/busybox $LINKNAME 2>/dev/null)
#  done
#
#  true
