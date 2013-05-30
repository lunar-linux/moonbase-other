
  patch_it $SOURCE2 1 &&

  sedit "s:rdb_bits_in_bitmask-delta:rdb_bits_in_bitmask-1:" crypto/replay/rdb.c &&

  OPTS="--disable-debug" &&

  default_config &&

  make uninstall &&

  default_make
