if in_depends $MODULE qt6-base; then
  . /etc/profile.d/qt6.rc
fi &&

if module_installed llvm; then
  OPTS+=" -Duse_libclang=ON"
fi &&

default_cmake_build
