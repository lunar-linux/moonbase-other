(
  unset LDFLAGS
  unset CFLAGS
  unset CXXFLAGS

  cat $SCRIPT_DIRECTORY/cdrdao-1.1.15-endianness.patch | patch -p0  &&
  cat $SCRIPT_DIRECTORY/cdrdao-1.1.5-c++.patch         | patch -p1  &&
  default_build

) > $C_FIFO 2>&1
