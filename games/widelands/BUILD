make -C lua-5.1.5 linux &&
make -C lua-5.1.5 local &&
export LUA_DIR="$SOURCE_DIRECTORY/lua-5.1.5" &&
sedit /Boost_USE_STATIC_LIBS/d CMakeLists.txt &&
sedit '/#ifndef WIN32/a\
    #include <unistd.h>' src/main.cc &&
default_cmake_build
