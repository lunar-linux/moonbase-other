(

  sed -i "16i #include <stdio.h>" src/celengine/overlay.h src/celengine/spiceinterface.cpp &&
  sed -i "18i #include <stdio.h>" src/celengine/star.cpp &&

  OPTS="$OPTS --with-lua" &&

  default_build  &&

  gather_docs controls.txt manual/*.html manual/*.css

) > $C_FIFO 2>&1
