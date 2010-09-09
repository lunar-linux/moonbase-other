(

  patch_it $SOURCE_CCACHE/$SOURCE1 0 &&

  sed -i "22i #include <cstring>" src/main/cpp/socketoutputstream.cpp src/examples/cpp/console.cpp &&
  sed -i "22i #include <cstdio>" src/examples/cpp/console.cpp &&
  sed -i "22i #include <string.h>" src/main/cpp/inputstreamreader.cpp src/main/cpp/socketoutputstream.cpp &&

  if in_depends $MODULE libiodbc; then
      LDFLAGS="$LDFLAGS -Wl,-rpath,/usr/lib/libiodbc"
   else
      LDFLAGS="$LDFLAGS -Wl,-rpath,/usr/lib/"
  fi &&
  
  default_build

) > $C_FIFO 2>&1
