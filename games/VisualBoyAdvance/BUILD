# How the hell did this _ever_ compile like that?
sedit "s:for(int i = 0; i < 16; i++):for(int z = 0; z < 16; z++):" src/sdl/debugger.cpp &&

# make it work with modern libpng
sedit "s:png_ptr->jmpbuf:png_jmpbuf(png_ptr):" src/Util.cpp &&

CXXFLAGS+=" -fpermissive" &&

default_game_build
