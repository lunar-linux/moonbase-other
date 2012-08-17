(

  sed -i "65i #include <string.h>" IlmCtlMath/CtlColorSpace.cpp IlmCtlMath/CtlColorSpace.h IlmCtl/CtlLex.cpp &&
  sed -i "67i #include <unistd.h>" IlmCtl/CtlInterpreter.cpp &&

  patch_it $SOURCE3 1 &&
  patch_it $SOURCE2 1 &&

  default_build

) > $C_FIFO 2>&1
