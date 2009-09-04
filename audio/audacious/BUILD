(

  # Ubuntu's patches
  patch_it $SOURCE2 1                               &&
  patch_it debian/patches/000* 1                    &&
  patch_it debian/patches/001* 1                    &&
  patch_it debian/patches/003* 1                    &&
  patch_it debian/patches/004* 1                    &&
  patch_it debian/patches/audacious-play-*.patch 1  &&
  patch_it debian/patches/bugzilla-42.patch 1       &&
  patch_it debian/patches/005* 1                    &&
  patch_it debian/patches/Update-Spanish-*.patch 1  &&

  default_build

) > $C_FIFO 2>&1
