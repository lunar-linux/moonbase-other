(

  . /etc/profile.d/llvm.rc &&

  sedit "s:/opt/local/bin:/opt/lunar/llvm/bin:" cmake/modules/FindLLVM.cmake &&

  mkdir  $SOURCE_DIRECTORY/OpenGTL-build  &&
  cd $SOURCE_DIRECTORY/OpenGTL-build      &&

  cmake $SOURCE_DIRECTORY/  -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                            -DCMAKE_BUILD_TYPE=RELEASE             \
                            $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
