(

  mkdir  $SOURCE_DIRECTORY/OpenGTL-build  &&
  cd $SOURCE_DIRECTORY/OpenGTL-build      &&

  cmake $SOURCE_DIRECTORY/  -DCMAKE_INSTALL_PREFIX=$OPTS  \
                            -DCMAKE_BUILD_TYPE=RELEASE   &&

  default_make

) > $C_FIFO 2>&1
