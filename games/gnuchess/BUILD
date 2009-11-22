(

  sedit "s:static pthread_t input_thread:pthread_t input_thread:g" src/input.c &&
  sedit "s:getline:getline_:g" src/common.h src/input.c &&

  CCARGS="-DXBOARD"                     \
  default_build &&
  cp -p $MOONBASE/games/$MODULE/chess  /usr/games

) > $C_FIFO 2>&1
