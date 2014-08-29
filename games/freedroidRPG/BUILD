sedit "s:LUA_LIBS:LUA_LIBS -ldl:" configure.ac &&

OPTS+=" --with-embedded-lua" &&
sedit "5 i freedroidRPG_CFLAGS = -I../lua" src/Makefile.am &&

autoreconf -i . &&

default_game_build
