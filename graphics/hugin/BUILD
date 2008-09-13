(
  cmake -DCMAKE_INSTALL_PREFIX=/usr &&
  sedit s@CMAKE_EXE_LINKER_FLAGS:STRING=@CMAKE_EXE_LINKER_FLAGS:STRING=-lpthread@ CMakeCache.txt &&

  default_make
 
) > $C_FIFO 2>&1
