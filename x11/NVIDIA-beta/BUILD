(

  KER_VER=$(readlink /usr/src/linux | cut -d- -f2) &&
  prepare_install &&
  cd $SOURCE_DIRECTORY &&
  rm -rf old.libraries &&
  ./nvidia-installer -s --no-rpms -N -k$KER_VER --no-recursion --no-x-check

) > $C_FIFO 2>&1
