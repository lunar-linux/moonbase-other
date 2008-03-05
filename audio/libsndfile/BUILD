(

  # Using a borrowed patch from gentoo to fix the flac (>=1.1.3) compile problem in libsndfile
  # Remember to remove this patch and at some point in the future!
  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  default_build

) > $C_FIFO 2>&1
