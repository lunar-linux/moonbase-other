(

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
