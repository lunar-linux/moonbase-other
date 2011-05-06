(

  sed -i "65i #include <string.h>" IlmCtlMath/CtlColorSpace.cpp &&

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  cd .. &&
  patch_it $SOURCE_CACHE/$SOURCE3 0  &&
  cd $SOURCE_DIRECTORY &&

  default_build

) > $C_FIFO 2>&1
