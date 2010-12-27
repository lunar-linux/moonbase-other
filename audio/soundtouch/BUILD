(

# This disables some optimizations else /usr/bin/soundstretch will segfault.
# And I am not using any crazy settings, just O2, pipe and native.
  sedit "s:#define ALLOW_X86_OPTIMIZATIONS     1::" include/STTypes.h &&

  ./bootstrap &&

  CXXFLAGS="-fPIC" &&

  OPTS="--enable-shared" &&

  if [ $USE_INTEGERS == "y" ] ; then
    OPTS="--enable-integer-samples"
   else
    OPTS="--disable-integer-samples"
  fi &&

  default_build

) > $C_FIFO 2>&1
