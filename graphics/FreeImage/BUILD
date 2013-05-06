sedit "36i #include <string.h>" Source/OpenEXR/IlmImf/ImfAutoArray.h &&

# we need the visibility flag, so don't overwrite them
sedit "s:CFLAGS ?=:CFLAGS +=:; s:CXXFLAGS ?=:CXXFLAGS +=:" Makefile.gnu &&

default_make &&

if [ $BUILD_FIP == "y" ]; then
  make -f Makefile.fip  &&
  make -f Makefile.fip install
fi
