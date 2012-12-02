(

  sed -i "36i #include <string.h>" Source/OpenEXR/IlmImf/ImfAutoArray.h &&

  default_make &&

  if [ $BUILD_FIP == "y" ]; then
    make -f Makefile.fip  &&
    make -f Makefile.fip install 
  fi 

) > $C_FIFO 2>&1
