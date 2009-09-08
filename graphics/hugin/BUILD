(
 if ! in_depends wxGTK mesa-lib ; then
  message "${PROBLEM_COLOR}Error: ${DEFAULT_COLOR}Compile wxGTK with OpenGL support"
 else
  cmake -DCMAKE_INSTALL_PREFIX=/usr &&
  sedit s@CMAKE_EXE_LINKER_FLAGS:STRING=@CMAKE_EXE_LINKER_FLAGS:STRING=-lpthread@ CMakeCache.txt &&
  default_make
 fi 
) > $C_FIFO 2>&1
