(

  unset CPP CXX CC CFLAGS CXXFLAGS CPPFLAGS LDFLAGS
  OPTS="$OPTS --with-libsndfile=system --with-libresample=no --with-libsamplerate=system"
  # Using a borrowed patch from gentoo to fix the flac (>=1.1.3) configure problem in audacity
  # Remember to remove this patch and the autoreconf line at some point in the future!
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  autoreconf &&
  default_build

) > $C_FIFO 2>&1
