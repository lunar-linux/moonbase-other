(
  patch -p0 < $SCRIPT_DIRECTORY/xmovie.patch   &&
  echo "PREFIX=/usr" >> global_config &&
  make                        &&
  prepare_install             &&
  make    install

) > $C_FIFO 2>&1
