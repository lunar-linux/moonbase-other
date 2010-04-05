(

  sed -i "22i #include <cstring>" src/main/cpp/socketoutputstream.cpp src/examples/cpp/console.cpp &&
  sed -i "22i #include <cstdio>" src/examples/cpp/console.cpp &&
  sed -i "22i #include <string.h>" src/main/cpp/inputstreamreader.cpp &&

  default_build

) > $C_FIFO 2>&1
