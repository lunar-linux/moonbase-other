OPTS+=" -DBUILD_SHARED_LIBS=ON" &&

# automatically build enabled docs
OPTS+=" -DLLVM_BUILD_DOCS=1" &&

# disabled for now
OPTS+=" -DLLVM_ENABLE_SPHINX=0" &&

# don't run doxygen at build AND install time
OPTS+=" -DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=1" &&

TARGETS=X86 &&
if [[ "$USE_AMDGPU" = "y" ]]; then
  TARGETS+=";AMDGPU"
fi &&
OPTS+=" -DLLVM_TARGETS_TO_BUILD=${TARGETS}" &&

default_cmake_build
