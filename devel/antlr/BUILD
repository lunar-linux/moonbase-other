(

  OPTS="--disable-examples" &&

  sed -i "14i #include <string.h>" lib/cpp/antlr/CharScanner.hpp &&
  sed -i "14i #include <cstdio>" lib/cpp/antlr/CharScanner.hpp &&

  default_build

) > $C_FIFO 2>&1
