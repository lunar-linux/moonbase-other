(

  unset CPP CXX CC CFLAGS CXXFLAGS CPPFLAGS LDFLAGS  &&
  OPTS+=" --with-libsndfile=system --with-libresample=no --with-libsamplerate=system --enable-unicode"  &&

  #see DEPENDS
  OPTS+=" --without-soundtouch"

  if [ -d /proc/asound ];  then
      OPTS+=" --with-portaudio"
  fi  &&

  default_build

) > $C_FIFO 2>&1
