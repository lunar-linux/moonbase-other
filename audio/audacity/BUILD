(

  unset CPP CXX CC CFLAGS CXXFLAGS CPPFLAGS LDFLAGS
  OPTS="$OPTS --with-libsndfile=system --with-libresample=no --with-libsamplerate=system"

  default_config  &&

  # it's a hack but it works (very ugly):
  # optimize  &&

  default_make

) > $C_FIFO 2>&1
