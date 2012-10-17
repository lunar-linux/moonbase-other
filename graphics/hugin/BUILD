(

 patch_it $SOURCE2 1 &&

 if ! in_depends wxGTK mesa-lib ; then
  message "${PROBLEM_COLOR}Error: ${DEFAULT_COLOR}Compile wxGTK with OpenGL support"
  exit 1;
 fi &&

  default_cmake_build

) > $C_FIFO 2>&1
