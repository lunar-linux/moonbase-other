(

 if ! in_depends wxGTK mesa-lib ; then
  message "${PROBLEM_COLOR}Error: ${DEFAULT_COLOR}Compile wxGTK with OpenGL support"
  exit 1;
 fi

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  OOTB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  mkdir $OOTB_DIR  &&
  cd $OOTB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
