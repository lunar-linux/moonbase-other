(

  sed -i "30i #include <unistd.h>" msn/util.cpp &&

  default_cmake_build &&

# It forgets to install this required header and kdenetwork will tank if you
# have said yes to libmsn.
  install ../msn/xmlParser.h /usr/include/msn/

) > $C_FIFO 2>&1
