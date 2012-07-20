(

  # for systems without /bin -> /usr/bin symlink
  if [ "`cd /usr/bin; pwd -P`" != "`cd /bin; pwd -P`" ]; then
    ln -sf /usr/bin/echo /bin/echo
  fi &&

# It looks for echo in the wrong place.
#  ln -sf /usr/bin/echo /bin/echo &&

  make defconfig  &&
  make  &&
  prepare_install   &&
  cp busybox /bin   &&
  gather_docs TODO  &&
  cp docs/busybox.1 /usr/share/man/man1/busybox.1

) > $C_FIFO 2>&1
