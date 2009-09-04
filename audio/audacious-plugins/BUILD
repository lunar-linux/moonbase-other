(

  # Ubuntu's patches
  patch_it $SOURCE2 1             &&
  patch_it debian/patches/001* 1  &&
  patch_it debian/patches/002* 1  &&
  patch_it debian/patches/003* 1  &&
  patch_it debian/patches/090* 1  &&

  # Shut up tedious message:  LASTFM: (cleanup) Cleanup finished
  sedit 's:g_print("LASTFM\: (cleanup) Cleanup finished\\n");::' src/lastfm/lastfm.c  &&

  OPTS+=" --enable-ipv6"  &&

  default_build

) > $C_FIFO 2>&1
