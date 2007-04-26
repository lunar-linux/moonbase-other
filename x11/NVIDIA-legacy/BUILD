(
  # We make the kernel modules on our own
  cd $SOURCE_DIRECTORY/usr/src/nv &&

  sedit "s:KBUILD_VERBOSE=1:KBUILD_VERBOSE=0:g" Makefile.kbuild &&

  make SYSSRC=/usr/src/linux module &&

  prepare_install &&

  make SYSSRC=/usr/src/linux install &&

  # And let nvidia-installer handle the rest
  cd $SOURCE_DIRECTORY &&
  rm -rf old.libraries &&

  ./nvidia-installer --silent --no-precompiled-interface --no-rpms --no-network --no-recursion --no-kernel-module --no-x-check

) > $C_FIFO 2>&1
