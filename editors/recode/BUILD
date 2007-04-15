(
  patch_it $SOURCE2 1 &&

  # Fix for building x86_64
  libtoolize -f &&
  export SED="/bin/sed" &&
  export max_cmd_len=32768 &&

  default_build &&
  install -m0755 $SCRIPT_DIRECTORY/dos2unix /usr/bin/ &&
  install -m0755 $SCRIPT_DIRECTORY/unix2dos /usr/bin/

) > $C_FIFO 2>&1
