(


  # Adds some missing includes that are related to our recent gcc/glibc bump.
  sed -i "27i #include <string.h>" ocp/src/placer/Ocp.cpp ocp/src/placer/PPlacement.h &&
  sed -i "28i #include <cstring>" ocp/src/placer/Ocp.cpp ocp/src/placer/PPlacement.h  &&
  sed -i "29i #include <cstdlib>" ocp/src/placer/Ocp.cpp ocp/src/placer/PPlacement.h  &&
  
  ALLIANCE_TOP=/opt/lunar/alliance &&

  ./configure --prefix=$ALLIANCE_TOP &&

  default_make

) > $C_FIFO
