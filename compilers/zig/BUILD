# The zig CMakeLists uses build type Debug if not set
# override it back to None so makepkg env vars are respected
OPTS=" -DCMAKE_BUILD_TYPE=None \
       -DCMAKE_INSTALL_PREFIX=/usr \
       -DZIG_PREFER_CLANG_CPP_DYLIB=ON"

default_cmake_build
