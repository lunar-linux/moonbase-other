rm -fr Source/Lib* \
       Source/ZLib \
       Source/OpenEXR &&

default_make &&

if [ $BUILD_FIP == "y" ]; then
  make -f Makefile.fip  &&
  make -f Makefile.fip install
fi
