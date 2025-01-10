# we need the visibility flags, so don't *overwrite* them
# otherwise modules which link to libfreeimage might get confused
# Following the lead of arch linux
export CFLAGS+=" -O3 -fPIC -fexceptions -fvisibility=hidden -fpermissive" &&

# Adding c++98 for now to skirt around c++11 incompatibilities
export CXXFLAGS+=" -O3 -fPIC -fexceptions -fvisibility=hidden \
                   -Wno-ctor-dtor-privacy -std=c++98" &&

default_make &&

if [ $BUILD_FIP == "y" ]; then
  make -f Makefile.fip &&
  make -f Makefile.fip install
fi
