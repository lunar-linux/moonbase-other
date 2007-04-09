(
  # We make the kernel modules on our own
  cd $SOURCE_DIRECTORY/usr/src/nv &&

  make SYSSRC=/usr/src/linux module &&

  prepare_install &&

  make install &&

  # And let nvidia-installer handle the rest
  cd $SOURCE_DIRECTORY &&
  ./nvidia-installer --silent \
                     --no-precompiled-interface \
                     --no-rpms \
                     --no-network \
                     --no-recursion \
                     --no-kernel-module \
                     --no-x-check

 
) > $C_FIFO 2>&1
