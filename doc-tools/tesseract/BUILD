(

  sed -i "26i #include <stdio.h>:" viewer/svutil.cpp &&

  cd tessdata &&
  tar zxvf $SOURCE_CACHE/$SOURCE2 &&
  cd $SOURCE_DIRECTORY &&

  default_build

) > $C_FIFO 2>&1
