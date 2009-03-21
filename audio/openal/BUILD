(

  cd CMakeConf &&
  cmake .. -DCMAKE_INSTALL_PREFIX=/usr &&
  default_build &&
  mkdir -p /etc/openal &&
  if [ ! -e /etc/openal/alsoft.conf ] ; then
    echo "format = AL_FORMAT_STEREO16" > /etc/openal/alsoft.conf
  fi

) > $C_FIFO 2>&1
