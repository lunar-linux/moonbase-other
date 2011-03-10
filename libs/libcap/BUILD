(

  # Fixes compilation error:
  # Failed to set capabilities on file `/sbin/setcap' (Operation not supported)
  patch_it $SOURCE2 1 &&

  default_build

) > $C_FIFO 2>&1
