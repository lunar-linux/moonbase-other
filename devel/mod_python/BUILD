(
  patch_it $SCRIPT_DIRECTORY/mod_python-3.0.3.patch 0 &&
  export OPTS="$OPTS --with-apxs=/usr/sbin/apxs" &&
  default_build

) > $C_FIFO 2>&1
