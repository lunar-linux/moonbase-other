OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DBUILD_SHARED_LIBS=ON" &&

if in_depends $MODULE libffi; then
  CPPFLAGS+=" -I/usr/lib/libffi-$(lvu installed libffi)/include"
fi &&

if in_depends $MODULE doxygen; then
  OPTS+=" -DLLVM_BUILD_DOCS=ON"
fi &&

if [[ "$USE_ASSERTS" == "y" ]]; then
  OPTS+=" -DLLVM_ENABLE_ASSERTIONS=ON"
fi &&

if [[ "$USE_R699" == "y" ]]; then
### have to figure out how can this option be handled with cmake
  OPTS+=" "
fi &&

default_cmake_build
