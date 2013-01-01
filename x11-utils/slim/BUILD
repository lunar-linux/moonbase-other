(

  sedit '/slim.conf/d' CMakeLists.txt &&

  default_cmake_build &&

  if [ ! -e /etc/slim.conf ]; then
     install -Dm0644 $SOURCE_DIRECTORY/slim.conf /etc/slim.conf
  fi

) > $C_FIFO 2>&1
