(

  echo  Preparing to build pccts.  Current Directory is: `pwd` &&
  echo  Building in $BUILD_DIRECTORY/$MODULE                   &&

  patch_it  $SOURCE_CACHE/$SOURCE2 1 		               &&

  make                                     		       &&
  prepare_install                          		       &&
  install -m 700 $BUILD_DIRECTORY/$MODULE/bin/antlr   /usr/bin &&
  install -m 700 $BUILD_DIRECTORY/$MODULE/bin/dlg     /usr/bin &&
  install -m 700 $BUILD_DIRECTORY/$MODULE/bin/genmk   /usr/bin &&
  install -m 700 $BUILD_DIRECTORY/$MODULE/bin/sor     /usr/bin &&
  mkdir -p /usr/include/$MODULE                                &&
  cp $BUILD_DIRECTORY/$MODULE/h/* /usr/include/$MODULE

) > $C_FIFO 2>&1
