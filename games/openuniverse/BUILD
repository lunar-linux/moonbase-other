(

  sed -i "23i #include <string.h>" src/ou.h &&
  sedit "s:GL_EXT_point_parameters:GL_EXT_point_parameters_UNDEFINED:g" src/comet.cpp &&

  default_game_build
  
) > $C_FIFO 2>&1
