(

  patch_it $SOURCE_CACHE/$SOURCE2 0  &&

  sed -i "15i #include <unistd.h>" examples/uselame.cpp examples/wavefile.cpp &&

  default_build

) > $C_FIFO 2>&1
