(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  sedit "s/DOLFS = false/DOLFS = true/" Makefile

  make || exit 1

  prepare_install &&
  cp busybox $TARGET_DIR/bin || exit 1

) > $C_FIFO 2>&1

#  cat busybox.links |
#  while read LINKNAME; do
#    (chroot $TARGET_DIR/ /bin/busybox ln -s /bin/busybox $LINKNAME 2>/dev/null)
#  done
#
#  true
