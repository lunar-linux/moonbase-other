(

  cd CMakeConf &&
  cmake .. -DCMAKE_INSTALL_PREFIX=/usr &&
  default_build &&
  mkdir -p /etc/openal &&
  install -m644 ../alsoftrc.sample /etc/openal/alsoft.conf

) > $C_FIFO 2>&1
