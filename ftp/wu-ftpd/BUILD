(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&
  patch_it $SOURCE_CACHE/$SOURCE3 0 &&
  # NOTE: this sedit is to fix the extra TAB followed by "=" signs in the
  # bison file src/ftpcmd.y  Stupid devs have corrupted source!!!
  sedit 's/^\t=//' src/ftpcmd.y &&
  default_build
  
) > $C_FIFO 2>&1
