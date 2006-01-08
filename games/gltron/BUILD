(

  sedit "s/-lglut /-lglut -lGLU -lXi -lXmu /" configure
  sedit "s/-lSDL /-lSDL -lpthread /"          configure
  patch_it $SOURCE_CACHE/$SOURCE2 1  && 
  default_game_build
  
) > $C_FIFO 2>&1
