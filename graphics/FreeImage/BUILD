(

  sed -i "54i #include <string.h>" Source/OpenEXR/Imath/ImathMatrix.h &&

  default_make &&

  if [ $BUILD_FIP == "y" ]; then
    make -f Makefile.fip  &&
    make -f Makefile.fip install 
  fi 

) > $C_FIFO 2>&1
