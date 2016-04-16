./bootstrap &&

CXXFLAGS+=" -fPIC" &&

OPTS+=" --enable-shared" &&

if [ "$USE_INTEGERS" == "y" ] ; then
  OPTS+=" --enable-integer-samples"
else
  OPTS+=" --disable-integer-samples"
fi &&

default_build
