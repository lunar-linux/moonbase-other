(
  #Bugfix for CMAKE 2.98
  sedit s/"FATAL_ERROR \"Program pkg-config not found\""/"STATUS \"Program pkg-config not found\""/ CMakeLists.txt &&

  cmake .\
        -DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_PREFIX=/usr &&

  default_build

) > $C_FIFO 2>&1
